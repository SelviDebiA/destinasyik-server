import express from "express";
import FileUpload from "express-fileupload";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
dotenv.config();
import WisataRoute from "./routes/WisataRoute.js";
import Nonwisata from "./routes/NonwisataRoute.js";
import Kontak from "./routes/KontakRoute.js";
import Paket from "./routes/PaketRoute.js";
import User from "./routes/UsersRoute.js";
import Ulasan from "./routes/UlasanRoute.js";
import Auth from "./routes/AuthRoute.js";


const app = express();

app.use(session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: {
        secure: 'auto'
    }
}));

app.use(cors());
app.use(express.json());
app.use(FileUpload());
app.use(express.static("public"));
app.use(WisataRoute);
app.use(Nonwisata);
app.use(Kontak);
app.use(Paket);
app.use(User);
app.use(Ulasan);
app.use(Auth);

app.listen(process.env.APP_PORT, ()=> console.log('Server up and Running...'));
