import express from 'express';
import asyncHandler from 'express-async-handler';
import {
  testController,
  spielerErstellenController,
  spielerLoeschenController,
  spielerBekommenController
} from '../Controllers/spieler.js';

const router = express.Router();

//----------------ROUTEN-----------

// Test route
router.get('/test', asyncHandler(testController));

//Spieler-Routen
router.get('/spieler', asyncHandler(spielerBekommenController));
router.post('/spieler', asyncHandler(spielerErstellenController));
router.delete('/spieler/:id', asyncHandler(spielerLoeschenController));



export default router;
