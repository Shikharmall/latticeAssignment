import db from "../models/indexModel.js";

const registerPsychiatrist = async (req, res) => {
  try {
    const { name, hospitalId } = req.body;

    // Create the psychiatrist
    const psychiatrist = await db.psychiatrists.create({
      name,
      hospitalId,
    });
    res
      .status(201)
      .json({ psychiatrist, message: "Psychiatrist registered successfully" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
};

export { registerPsychiatrist };
