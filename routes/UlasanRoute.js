import express from "express";
import {
    getUlasan,
    getUlasanById,
    saveUlasan,
    deleteUlasan
} from "../controllers/UlasanConroller.js";
import {verifyUser, adminOnly} from "../middleware/AuthUser.js";
const router = express.Router();

router.get('/ulasan', getUlasan);
router.get('/ulasan/:id', getUlasanById);
router.post('/ulasan', saveUlasan);
router.delete('/ulasan/:id', deleteUlasan);

export default router;