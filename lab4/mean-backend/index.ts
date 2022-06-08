import express from "express";
import { json } from "body-parser";
import mongoose, { ConnectOptions } from "mongoose";
import dotenv from "dotenv";
import { HandleErrors } from "./middlewares/errorHandlerMiddleware";
import cors from "cors";
import { WeaponRouter } from "./routes/weaponRoutes";

const app = express();

app.use(json());
app.use(
  cors({
    origin: "*",
  })
);
app.use(WeaponRouter);

dotenv.config();

const PORT = process.env.PORT || 3000;
const uri = process.env.DB_URL || "";

mongoose.connect(
  uri,
  {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  } as ConnectOptions,
  (err) => {
    if (err) console.log("ERROR: " + err);
    console.log("Connected to db");
  }
);

app.use(HandleErrors);

app.listen(PORT, () => {
  console.log(`Server is listening on port: ${PORT}`);
});
