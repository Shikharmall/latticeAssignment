import db from "../models/indexModel.js";

const registerPatient = async (req, res) => {
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
    res.status(500).json({ message: "Internal server error" });
  }
};

export { registerPatient };
