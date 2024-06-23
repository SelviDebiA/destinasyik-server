import mysql from 'mysql2/promise';
import dotenv from "dotenv";
dotenv.config();

const dbConfig = {
  host: process.env.SERVER,
  user: process.env.USERNAME,
  password: process.env.PASSWORD,
  database: process.env.NAME,
  port: process.env.PORT_DB,
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
