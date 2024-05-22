import express from "express";
import { registerHospital } from "../controllers/hospitalController.js";

const router = express.Router();

router.post("/registerHospital", registerHospital);

export default router;
