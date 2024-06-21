import express from "express";
import {
    getWisata,
    getWisataById,
    saveWisata,
    //updateWisata,
   deleteWisata
} from "../controllers/WisataControllers.js";

const router = express.Router();

router.get('/wisata', getWisata);
router.get('/wisata/:id', getWisataById);
router.post('/wisata', saveWisata);
//router.patch('/wisata/:id', updateWisata);
router.delete('/wisata/:id', deleteWisata);

export default router;