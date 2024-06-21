import express from "express";
import {
    getUsers,
    getUsersById,
    saveUsers,
    updateUsers,
    deleteUsers
} from "../controllers/usersController.js";
const router = express.Router();

router.get('/user', getUsers);
router.get('/user/:id', getUsersById);
router.post('/user', saveUsers);
router.patch('/user/:id', updateUsers);
router.delete('/user/:id', deleteUsers);

export default router;