import express from 'express';
import asyncHandler from 'express-async-handler';
import { testController } from '../Controllers/index.js';

const router = express.Router();

//----------------ROUTEN-----------

// Test route
router.get('/test', asyncHandler(testController));

export default router;
