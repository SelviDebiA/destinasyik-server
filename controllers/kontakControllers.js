import query from "../config/Database.js"


export const getKontak = async (req, res) => {
    const connection = await query();
    try {
      const [rows] = await connection.execute('SELECT * FROM kontak');
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
      const [rows] = await connection.execute('SELECT * FROM kontak WHERE id = ?', [req.params.id]);
      const response = rows[0] || {};
      res.json(response);
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    } finally {
      connection.end();
    }
  }; 

  export const saveKontak = async (req, res) => {
    const connection = await query(); // Inisialisasi koneksi
  
    try {
      const {
        nama,
        email,
        no_hp,
        perusahaan,
        pesan,
      } = req.body;
  
      // Pastikan bahwa semua properti memiliki nilai sebelum digunakan dalam kueri
      if (!nama || !email || !no_hp || !perusahaan || !pesan) {
        return res.status(400).json({ msg: 'Invalid input data' });
      }
  
      // Masukkan data ke database menggunakan SQL
      await connection.execute(
        'INSERT INTO kontak (nama, email, no_hp, perusahaan, pesan) VALUES (?, ?, ?, ?, ?)',
        [
          nama,
          email,
          no_hp,
          perusahaan,
          pesan,
        ]
      );
  
      res.status(201).json({ msg: 'Kontak Created Successfully' });
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    } finally {
      connection.end(); // Tutup koneksi setelah selesai
    }
  };

  export const deleteKontak = async (req, res) => {
    const { id } = req.params;
  
    try {
      const connection = await query();
  
      const [kontak] = await connection.execute('SELECT * FROM kontak WHERE id = ?', [id]);
  
      if (kontak.length === 0) {
        return res.status(404).json({ msg: 'Kontak Not Found' });
      }
  
      await connection.execute('DELETE FROM kontak WHERE id = ?', [id]);
  
      res.status(200).json({ msg: 'Kontak Deleted Successfully' });
    } catch (error) {
      console.error(error.message);
      res.status(500).json({ msg: 'Internal Server Error' });
    }
  };