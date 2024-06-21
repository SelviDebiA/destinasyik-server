import express from "express";
import {
    getKontak,
    getWisataById,
    saveKontak,
    deleteKontak
} from "../controllers/kontakControllers.js";
const router = express.Router();

router.get('/kontak', getKontak);
router.get('/kontak/:id', getWisataById);
router.post('/kontak', saveKontak);
router.delete('/kontak/:id', deleteKontak);

export default router;