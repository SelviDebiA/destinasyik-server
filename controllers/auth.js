import query from "../config/Database.js";
import bcryptjs from 'bcryptjs';

export const Login = async (req, res) => {
    try {
      const connection = await query();
      const [user] = await connection.execute('SELECT uuid, nama, email, no_hp, foto, role, password FROM user WHERE email = ?', [req.body.email]);
  
      if (!user.length) {
        return res.status(404).json({ msg: "User not found" });
      }
  
      const match = await bcryptjs.compare(req.body.password, user[0].password);
      if (!match) return res.status(400).json({ msg: "Password Salah" });
  
      req.session.userId = user[0].uuid;
      const { uuid, nama, email, no_hp, foto, role } = user[0];
      res.status(200).json({ uuid, nama, email, no_hp, foto, role });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Internal Server Error" });
    }
  };

  export const Me = async (req, res) => {
    try {
      if (!req.session.userId) {
        return res.status(401).json({ msg: "Mohon login ke akun anda" });
      }
  
      const connection = await query();
      const [user] = await connection.execute('SELECT uuid, nama, email, no_hp, foto, role FROM user WHERE uuid = ?', [req.session.userId]);
  
      if (!user.length) {
        return res.status(404).json({ msg: "User tidak ditemukan" });
      }
  
      const { uuid, nama, email, no_hp, foto, role } = user[0];
      res.status(200).json({ uuid, nama, email, no_hp, foto, role });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Internal Server Error" });
    }
  };


  export const logOut = async (req, res) => {
    try {
      req.session.destroy((err) => {
        if (err) {
          return res.status(400).json({ msg: "Tidak dapat Logout" });
        }
        res.status(200).json({ msg: "Anda telah logout" });
      });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Internal Server Error" });
    }
  };
  