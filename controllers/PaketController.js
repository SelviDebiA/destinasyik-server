import query from "../config/Database.js";
import path from 'path';
import fs from 'fs/promises';

export const getPaket = async (req, res) => {
    const connection = await query();
    try {
      const [rows] = await connection.execute('SELECT * FROM paket_wisata');
      res.json(rows);
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    } finally {
      connection.end();
    }
  };

  export const getPaketById = async (req, res) => {
    const connection = await query();
    try {
      const [rows] = await connection.execute('SELECT * FROM paket_wisata WHERE id = ?', [req.params.id]);
      const response = rows[0] || {};
      res.json(response);
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    } finally {
      connection.end();
    }
  }; 

  export const savePaket = async (req, res) => {
    const connection = await query(); // Inisialisasi koneksi
  
    try {
        if (!req.files || !req.files.foto) {
            return res.status(400).json({ msg: 'No File Uploaded' });
        }
  
        const {
            nama_paket,
            lama_kegiatan,
            destinasi1,
            destinasi2,
            destinasi3,
            destinasi4,
            destinasi5,
            rentang_harga,
            biaya1,
            biaya2,
            biaya3,
        } = req.body;
  
        if (!nama_paket || !lama_kegiatan || !destinasi1 || !destinasi2 || !destinasi3 || !destinasi4 || !destinasi5 || !rentang_harga || !biaya1 || !biaya2 || !biaya3) {
            return res.status(400).json({ msg: 'Invalid input data' });
        }
  
        const fotoFile = req.files.foto;
  
        const fotoFileName = fotoFile.md5 + path.extname(fotoFile.name);
        const fotoUrl = `${req.protocol}://${req.get('host')}/images/${fotoFileName}`;
  
        await fotoFile.mv(`./public/images/${fotoFileName}`);
  
        await connection.execute(
            'INSERT INTO paket_wisata (nama_paket, lama_kegiatan, destinasi1, destinasi2, destinasi3, destinasi4, destinasi5, rentang_harga, biaya1, biaya2, biaya3, foto, foto_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )',
            [
                nama_paket,
                lama_kegiatan,
                destinasi1,
                destinasi2,
                destinasi3,
                destinasi4,
                destinasi5,
                rentang_harga,
                biaya1,
                biaya2,
                biaya3,
                fotoFileName, 
                fotoUrl,      
            ]
        );
  
        res.status(201).json({ msg: 'Paket Wisata Created Successfully' });
    } catch (error) {
        console.error(error.message);
        res.status(500).json({ msg: 'Internal Server Error' });
    } finally {
        connection.end(); // Tutup koneksi setelah selesai
    }
};

export const updatePaket = async (req, res) => {
  try {
    const { id } = req.params;
    const {
      nama_paket,
      lama_kegiatan,
      destinasi_wisata,
      rangkaian_kegiatan,
      fasilitas,
      biaya,
      rentang_harga,
    } = req.body;

    // Check if at least one field is provided for update
    if (!nama_paket && !lama_kegiatan && !destinasi_wisata && !rangkaian_kegiatan && !fasilitas && !biaya && !rentang_harga && !req.files.foto) {
      return res.status(400).json({ msg: 'No update data provided' });
    }

    const connection = await query();

    // Build the SQL UPDATE query dynamically based on the provided fields
    const updateFields = [];
    const updateValues = [];

    if (nama_paket) {
      updateFields.push('nama_paket = ?');
      updateValues.push(nama_paket);
    }
    if (lama_kegiatan) {
      updateFields.push('lama_kegiatan = ?');
      updateValues.push(lama_kegiatan);
    }
    if (destinasi_wisata) {
      updateFields.push('destinasi_wisata = ?');
      updateValues.push(destinasi_wisata);
    }
    if (rangkaian_kegiatan) {
      updateFields.push('rangkaian_kegiatan = ?');
      updateValues.push(rangkaian_kegiatan);
    }
    if (fasilitas) {
      updateFields.push('fasilitas = ?');
      updateValues.push(fasilitas);
    }
    if (biaya) {
      updateFields.push('biaya = ?');
      updateValues.push(JSON.stringify(biaya));
    }
    if (rentang_harga) {
      updateFields.push('rentang_harga = ?');
      updateValues.push(JSON.stringify(rentang_harga));
    }

    // Check if there are new photo files
    if (req.files && req.files.foto) {
      const fotoFiles = Array.isArray(req.files.foto) ? req.files.foto : [req.files.foto]; // Selalu iterasi sebagai array

      const fotoData = [];
      const fotoUrls = [];

      for (const fotoFile of fotoFiles) {
        const fotoFileName = fotoFile.md5 + path.extname(fotoFile.name);
        const fotoUrl = `${req.protocol}://${req.get('host')}/images/${fotoFileName}`;

        await fotoFile.mv(`./public/images/${fotoFileName}`);
        fotoData.push(fotoFileName);
        fotoUrls.push(fotoUrl);
      }

      updateFields.push('foto = ?');
      updateFields.push('foto_url = ?');
      updateValues.push(fotoData);
      updateValues.push(fotoUrls);
    }

    // Execute the SQL UPDATE query
    await connection.execute(
      `UPDATE paket_wisata SET ${updateFields.join(', ')} WHERE id = ?`,
      [...updateValues, id]
    );

    res.status(200).json({ msg: 'Paket Wisata Updated Successfully' });
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ msg: 'Internal Server Error' });
  }
};

export const deletePaket = async (req, res) => {
    const { id } = req.params;
  
    try {
      const connection = await query();
  
      // Dapatkan data wisata berdasarkan ID
      const [paket_wisata] = await connection.execute('SELECT * FROM paket_wisata WHERE id = ?', [id]);
  
      // Pastikan data wisata ditemukan
      if (paket_wisata.length === 0) {
        return res.status(404).json({ msg: 'Wisata Not Found' });
      }
  
      let fotoData = [];
      try {
        // Coba untuk mengurai data foto dari JSON
        fotoData = JSON.parse(paket_wisata[0].foto);
      } catch (error) {
        console.error('Error parsing JSON for foto:', error.message);
        // Tangani jika terjadi kesalahan, bisa kosongkan atau atur sebagai array kosong
      }
  
      let fotoUrls = [];
      try {
        // Coba untuk mengurai data foto_url dari JSON
        fotoUrls = JSON.parse(paket_wisata[0].foto_url);
      } catch (error) {
        console.error('Error parsing JSON for foto_url:', error.message);
        // Tangani jika terjadi kesalahan, bisa kosongkan atau atur sebagai array kosong
      }
  
      // Hapus file foto dari direktori
      for (const foto of fotoData) {
        await deleteFile(`./public/images/${foto.name}`);
      }
  
      // Hapus data dari database
      await connection.execute('DELETE FROM paket_wisata WHERE id = ?', [id]);
  
      res.status(200).json({ msg: 'Wisata Deleted Successfully' });
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    }
  };
  
  // Fungsi untuk menghapus file dengan penanganan kesalahan
  const deleteFile = async (filePath) => {
    try {
      await fs.unlink(filePath);
    } catch (error) {
      // Tangani kesalahan unlink di sini (misalnya ENOENT)
      console.error(`Error deleting file at ${filePath}: ${error.message}`);
    }
  };