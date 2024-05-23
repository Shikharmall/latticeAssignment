import express from "express";
import { fetchPsychiatrists, registerPsychiatrist } from "../controllers/psychiatristControllers.js";

const router = express.Router();

router.post("/registerPsychiatrist", registerPsychiatrist);
router.get("/fetchPsychiatrists", fetchPsychiatrists);

export default router;
