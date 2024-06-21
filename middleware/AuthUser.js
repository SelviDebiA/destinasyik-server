import query from "../config/Database.js";

export const verifyUser = async (req, res, next) => {
    if (!req.session.userId) {
      return res.status(401).json({ msg: "Mohon login ke akun Anda!" });
    }
    const connection = await query();
    try {
      const [user] = await connection.execute('SELECT id, role FROM user WHERE uuid = ?', [req.session.userId]);
  
      if (!user || user.length === 0 || !user[0].id) {
        return res.status(404).json({ msg: "User tidak ditemukan" });
      }
  
      req.userId = user[0].id;
      req.role = user[0].role;
      next();
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Internal Server Error" });
    } finally {
      connection.end();
    }
  };


export const adminOnly = async (req, res, next) => {
  const connection = await query();
  try {
    const [user] = await connection.execute('SELECT role FROM user WHERE uuid = ?', [req.session.userId]);

    if (!user || user.length === 0 || user[0].role !== "admin") {
      return res.status(403).json({ msg: "Akses terlarang" });
    }

    next();
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal Server Error" });
  } finally {
    connection.end();
  }
};
