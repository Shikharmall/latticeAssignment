import db from "../models/indexModel.js";
import { ApiError } from "../utils/APiError.js";

const registerHospital = async (req, res, next) => {
  try {
    const { name } = req.body;

    const hospital = await db.hospitals.create({
      name,
    });
    res
      .status(201)
      .json({ hospital, message: "Hospital registered successfully" });
  } catch (error) {
    //console.error(error);
    return next(new ApiError(error.message, 500));
    //res.status(500).json({ message: "Internal server error" });
  }
};

export { registerHospital };
