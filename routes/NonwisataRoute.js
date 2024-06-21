import express from "express";
import {
    getNonwisata,
    getNonwisataById,
    saveNonwisata,
    //updateWisata,
    deleteNonwisata,
} from "../controllers/NonwisataControllers.js";

const router = express.Router();

router.get('/nonwisata', getNonwisata);
router.get('/nonwisata/:id', getNonwisataById);
router.post('/nonwisata', saveNonwisata);
//router.patch('/nonwisata/:id', updateWisata );
router.delete('/nonwisata/:id', deleteNonwisata);

export default router;
