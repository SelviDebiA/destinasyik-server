import query from "../config/Database.js";
import { randomUUID } from 'crypto';
import bcryptjs from 'bcryptjs';
import path from 'path';
import fs from 'fs/promises';


export const getUsers = async (req, res) => {
  const connection = await query();
  try {
    const [rows] = await connection.execute('SELECT uuid, nama, email,no_hp, role FROM user');
    res.json(rows);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  } finally {
    connection.end();
  }
};


export const getUsersById = async (req, res) => {
  const connection = await query();
  try {
    const [rows] = await connection.execute('SELECT uuid, nama, email,no_hp, role FROM user WHERE uuid = ?', [req.params.id]);
    const response = rows[0] || {};
    res.json(response);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  } finally {
    connection.end();
  }
}; 


export const saveUsers = async (req, res) => {
  const connection = await query();
  const { nama, email, no_hp, password } = req.body;

  try {
    let fotoUrl = null;
    if (req.files && req.files.foto) {
      const fotoFile = req.files.foto;
      const fotoFileName = fotoFile.md5 + path.extname(fotoFile.name);
      fotoUrl = `${req.protocol}://${req.get('host')}/images/${fotoFileName}`;
      await fotoFile.mv(`./public/images/${fotoFileName}`);
    }

    if (
      nama === undefined ||
      nama === "" ||
      email === undefined ||
      email === "" ||
      no_hp === undefined ||
      isNaN(+no_hp) ||
      password === undefined ||
      password === "" 
    ) {
      return res.status(400).json({ error: "Invalid data!" });
    }

    const isDuplicate = await query(
      `
        SELECT id FROM user WHERE no_hp = ? OR email = ?
      `,
      [no_hp, email]
    );

    if (isDuplicate.length > 0) {
      return res.status(400).json({ error: "User already exists!" });
    }

    const salt = await bcryptjs.genSalt(12);
    const hash = await bcryptjs.hash(password, salt);

    const userUUID = randomUUID();
    const role = "user";

    await connection.execute(
      `
        INSERT INTO user (
           uuid, nama, email, no_hp, password, foto, role
        ) VALUES (?, ?, ?, ?, ?, ?, ?)
      `,
      [userUUID, nama, email, no_hp, hash, fotoUrl || null, role]
    );

    return res.status(200).json({ message: "Register success!" });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    connection.end();
  }
};

export const updateUsers = async (req, res) => {
  const connection = await query();
  const salt = await bcryptjs.genSalt(12);
  const id = req.params.id;

  try {
    const [rows] = await connection.execute('SELECT * FROM user WHERE uuid = ?', [id]);
    const user = rows[0];

    if (!user) {
      return res.status(404).json({ msg: "User not found" });
    }

    const { nama, email, no_hp, password, confPassword, role } = req.body;

    let fotoUrl = user.foto; // Foto yang sudah ada
    if (req.files && req.files.foto) {
      const fotoFile = req.files.foto;
      const fotoFileName = `user_photo_${Date.now()}${path.extname(fotoFile.name)}`;
      fotoUrl = `${req.protocol}://${req.get('host')}/images/${fotoFileName}`;
      await fotoFile.mv(`./public/images/${fotoFileName}`);
    }

    let hashPassword = user.password; // Gunakan password yang sudah ada jika tidak ada password baru
    if (password && password !== "") {
      if (password !== confPassword) {
        return res.status(400).json({ error: "Password not match!" });
      }
      hashPassword = await bcryptjs.hash(password, salt);
    }

    // Perbarui query SQL untuk memungkinkan email dan no_hp tetap sama
    await connection.execute(
      'UPDATE user SET nama = ?, email = COALESCE(?, email), no_hp = COALESCE(?, no_hp), password = ?, foto = ?, role = ? WHERE uuid = ?',
      [nama, email, no_hp, hashPassword, fotoUrl, role, id]
    );

    return res.status(200).json({ message: "Update success!" });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    connection.end();
  }
};

export const deleteUsers = async (req, res) => {
  const connection = await query();
  const id = req.params.id;

  try {
    const [rows] = await connection.execute('SELECT * FROM user WHERE uuid = ?', [id]);
    const user = rows[0];

    if (!user) {
      return res.status(404).json({ msg: "User not found" });
    }

    // Hapus file foto jika ada
    if (user.foto) {
      const fotoPath = path.join('./public/images/', path.basename(user.foto));
      await fs.unlink(fotoPath);
    }

    // Hapus pengguna dari database
    await connection.execute('DELETE FROM user WHERE uuid = ?', [id]);

    return res.status(200).json({ message: "Delete success!" });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    connection.end();
  }
};