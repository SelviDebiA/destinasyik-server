import mysql from 'mysql2/promise';

const dbConfig = {
  host: 'sql12.freemysqlhosting.net	',
  user: 'sql12715136',
  password: 'EPe44psstU',
  database: 'sql12715136',
};

const createConnection = async () => {
  try {
    const connection = await mysql.createConnection(dbConfig);
    console.log('Connected to the database');
    return connection;
  } catch (error) {
    console.log('Error connecting to the database:', error.message);
    throw error;
  }
};

export default createConnection;
