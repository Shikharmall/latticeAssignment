import db from "../models/indexModel.js";
import { ApiError } from "../utils/APiError.js";

const registerPatient = async (req, res, next) => {
  try {
    const { name, address, email, phoneNumber, password, psychiatristId } =
      req.body;

    // Create the patient
    const patient = await db.patients.create({
      name,
      address,
      email,
      phoneNumber,
      password,
      psychiatristId,
      photo: req.file.path,
    });
    res
      .status(201)
      .json({ patient, message: "Patient registered successfully" });
  } catch (error) {
    console.error(error);
    return next(new ApiError(error.message, 500));
    //res.status(500).json({ message: "Internal server error" });
  }
};

export { registerPatient };
