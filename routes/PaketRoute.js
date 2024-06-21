import express from "express";
import {
    getPaket,
    getPaketById,
    savePaket,
    updatePaket,
    deletePaket
} from "../controllers/PaketController.js";
import {verifyUser, adminOnly} from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/paket', getPaket);
router.get('/paket/:id', getPaketById);
router.post('/paket', savePaket);
router.patch('/paket/:id', updatePaket);
router.delete('/paket/:id', deletePaket);

export default router;
