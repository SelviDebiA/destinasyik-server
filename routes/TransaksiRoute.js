import express from "express";
import router from "./WisataRoute";

import {
    getTransaksi,
    getTransaksiById,
    saveTransaksi,
    deleteTransaksi
} from "../controllers/TransaksiController.js";

const router = express.Router();

router.get('/transaksi', getTransaksi);
router.get('/transaksi/:id', getTransaksiById);
router.post('/transaksi', saveTransaksi);
router.delete('/transaksi/:id', deleteTransaksi);

export default router;