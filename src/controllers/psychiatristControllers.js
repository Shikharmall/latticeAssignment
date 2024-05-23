import db from "../models/indexModel.js";
import { ApiError } from "../utils/APiError.js";

const registerPsychiatrist = async (req, res, next) => {
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
    return next(new ApiError(error.message, 500));
    //res.status(500).json({ message: "Internal server error" });
  }
};

const fetchPsychiatrists = async (req, res) => {
  const hospitalId = req.body.hospitalId;

  try {
    // Fetch hospital with psychiatrists and their patients
    const hospital = await db.hospitals.findByPk(hospitalId, {
      include: {
        model: db.psychiatrists,
        include: {
          model: db.patients
        }
      }
    });

    if (!hospital) {
      return res.status(404).json({ message: 'Hospital not found' });
    }

    // Extract psychiatrists and patients information
    const psychiatrists = hospital.Psychiatrists.map(psychiatrist => ({
      id: psychiatrist.id,
      name: psychiatrist.name,
      patientCount: psychiatrist.Patients.length
    }));

    const totalPsychiatrists = hospital.Psychiatrists.length;
    const totalPatients = hospital.Psychiatrists.reduce((sum, psychiatrist) => sum + psychiatrist.Patients.length, 0);

    res.json({
      hospitalName: hospital.name,
      totalPsychiatrists,
      totalPatients,
      psychiatrists
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Internal server error' });
  }
};

export { registerPsychiatrist, fetchPsychiatrists };
