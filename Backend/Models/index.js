import { query, pool } from '../DB/index.js';
import bcrypt from 'bcrypt';

//LOGIN
const testDB = async (email, password) => {
  //Schauen ob User existiert
  const { rows } = await query("SELECT 'HELLO WORLD'");

  if (!rows[0]) return null;

  return rows[0];
};

export { testDB };
