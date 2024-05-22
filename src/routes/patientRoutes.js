import express from "express";
import { registerPatient } from "../controllers/patientControllers.js";
import multer from "multer";

const router = express.Router();

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "src/uploads/");
  },
  filename: function (req, file, cb) {
    // Extracting the file extension
    const ext = file.originalname.split(".").pop();
    // Generating a unique filename with the original file extension
    cb(null, file.fieldname + "-" + Date.now() + "." + ext);
  },
});

const upload = multer({ storage: storage });

router.post("/registerPatient", upload.single("patientPhoto"), registerPatient);

export default router;
