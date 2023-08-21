import { testDB } from '../Models/index.js';

//Controller
const testController = async (req, res) => {
  const result = await testDB();

  if (result) return res.status(200).json(result);

  return res.status(400).send('Keine Datenbankverbindung möglich');
};

export { testController };
