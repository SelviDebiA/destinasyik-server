import query from "../config/Database.js";
import path from 'path';
import fs from 'fs/promises';

export const getWisata = async (req, res) => {
  const connection = await query();
  try {
    const [rows] = await connection.execute('SELECT * FROM wisata');
    res.json(rows);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  } finally {
    connection.end();
  }
};

export const getWisataById = async (req, res) => {
  const connection = await query();
  try {
    const [rows] = await connection.execute('SELECT * FROM wisata WHERE id = ?', [req.params.id]);
    const response = rows[0] || {};
    res.json(response);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  } finally {
    connection.end();
  }
};

export const saveWisata = async (req, res) => {
  try {
    const {
      nama_tempat,
      deskripsi_singkat,
      alamat,
      link_maps,
      deskripsi_panjang,
      ket1, ket2, ket3, ket4, ket5, ket6,
      harga1, harga2, harga3, harga4, harga5, harga6,
    } = req.body;
    if (
      !nama_tempat ||
      !deskripsi_singkat ||
      !alamat ||
      !link_maps ||
      !deskripsi_panjang ||
      !ket1 || !ket2 || !ket3 || !ket4 || !ket5 || !ket6 ||
      !harga1 || !harga2 || !harga3 || !harga4 || !harga5 || !harga6
    ) {
      return res.status(400).json({ msg: 'Invalid input data' });
    }
    const connection = await query();
      const coverFile = req.files.cover;
      const fotoFile1 = req.files.foto1;
      const fotoFile2 = req.files.foto2;
      const fotoFile3 = req.files.foto3;
      const fotoFile4 = req.files.foto4;
      const fotoFile5 = req.files.foto5;

      const coverFileName = coverFile.md5 + path.extname(coverFile.name);
      const coverUrl = `${req.protocol}://${req.get('host')}/images/${coverFileName}`;
      const FotoFileName1 = fotoFile1.md5 + path.extname(fotoFile1.name);
      const fotoUrl1 = `${req.protocol}://${req.get('host')}/images/${FotoFileName1}`;
      const FotoFileName2 = fotoFile2.md5 + path.extname(fotoFile2.name);
      const fotoUrl2 = `${req.protocol}://${req.get('host')}/images/${FotoFileName2}`;
      const FotoFileName3 = fotoFile3.md5 + path.extname(fotoFile3.name);
      const fotoUrl3 = `${req.protocol}://${req.get('host')}/images/${FotoFileName3}`;
      const FotoFileName4 = fotoFile4.md5 + path.extname(fotoFile4.name);
      const fotoUrl4 = `${req.protocol}://${req.get('host')}/images/${FotoFileName4}`;
      const FotoFileName5 = fotoFile5.md5 + path.extname(fotoFile5.name);
      const fotoUrl5 = `${req.protocol}://${req.get('host')}/images/${FotoFileName5}`;

  
      await coverFile.mv(`./public/images/${coverFileName}`);
      await fotoFile1.mv(`./public/images/${FotoFileName1}`);
      await fotoFile2.mv(`./public/images/${FotoFileName2}`);
      await fotoFile3.mv(`./public/images/${FotoFileName3}`);
      await fotoFile4.mv(`./public/images/${FotoFileName4}`);
      await fotoFile5.mv(`./public/images/${FotoFileName5}`);

      await connection.execute(
        'INSERT INTO wisata (nama_tempat, deskripsi_singkat, alamat, link_maps, deskripsi_panjang, ket1, ket2, ket3, ket4, ket5, ket6, harga1, harga2, harga3, harga4, harga5, harga6, cover, foto1, foto2, foto3, foto4, foto5 ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ',
        [
        nama_tempat, deskripsi_singkat, alamat, link_maps, deskripsi_panjang,
        ket1, ket2, ket3, ket4, ket5, ket6, harga1, harga2, harga3, harga4, harga5, harga6,
        coverUrl, fotoUrl1, fotoUrl2, fotoUrl3, fotoUrl4, fotoUrl5,
        ]
      );
      res.status(201).json({ msg: 'Wisata Created Successfully' });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  } 
};


export const deleteWisata = async (req, res) => {
  try {
    const { id } = req.params; // Ambil ID dari parameter URL
    
    const connection = await query();
    // Dapatkan file paths dari database berdasarkan ID
    const [rows]  = await connection.execute('SELECT cover, foto1, foto2, foto3, foto4, foto5 FROM wisata WHERE id = ?', [id]);

    if (rows.length === 0) {
      return res.status(404).json({ msg: 'Wisata not found' });
    }

    const { coverFileName, FotoFileName1, FotoFileName2, FotoFileName3, FotoFileName4, FotoFileName5 } = rows[0];
  

    
    await connection.execute('DELETE FROM wisata WHERE id = ?', [id]);

    // Hapus file dari direktori
    await deleteFile(`./public/images/${coverFileName}`);
    await deleteFile(`./public/images/${FotoFileName1}`);
    await deleteFile(`./public/images/${FotoFileName2}`);
    await deleteFile(`./public/images/${FotoFileName3}`);
    await deleteFile(`./public/images/${FotoFileName4}`);
    await deleteFile(`./public/images/${FotoFileName5}`);

    res.status(200).json({ msg: 'Wisata deleted successfully' });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  }
};

const deleteFile = async (filePath) => {
  try {
    await fs.unlink(filePath);
  } catch (error) {
    // Tangani kesalahan unlink di sini (misalnya ENOENT)
    console.error(`Error deleting file at ${filePath}: ${error.message}`);
  }
};