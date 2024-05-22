import express from "express";
import { registerPsychiatrist } from "../controllers/psychiatristControllers.js";

const router = express.Router();

router.post("/registerPsychiatrist", registerPsychiatrist);

export default router;
