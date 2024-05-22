import db from "../models/indexModel.js";

const registerHospital = async (req, res) => {
  try {
    const { name } = req.body;

    // Create the hospital
    const hospital = await db.hospitals.create({
      name,
    });
    res
      .status(201)
      .json({ hospital, message: "Hospital registered successfully" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
};

/*const fetchPsychiatrists = async (req, res) => {
  try {
    const { hospitalId } = req.body;
    const hospital = await Hospital.findOne({
      where: { id: hospitalId },
      include: [{
        model: Psychiatrist,
        include: [{
          model: Patient,
          attributes: [[Sequelize.fn('COUNT', Sequelize.col('Patient.id')), 'patientsCount']]
        }],
        attributes: ['id', 'name']
      }],
      attributes: ['name', [Sequelize.fn('COUNT', Sequelize.col('Psychiatrists.id')), 'psychiatristCount']]
    });

    if (!hospital) {
      return res.status(404).json({ message: 'Hospital not found' });
    }

    const psychiatristDetails = hospital.Psychiatrists.map(psychiatrist => ({
      id: psychiatrist.id,
      name: psychiatrist.name,
      patientsCount: psychiatrist.Patients.length > 0 ? psychiatrist.Patients[0].dataValues.patientsCount : 0
    }));

    const response = {
      hospitalName: hospital.name,
      psychiatristCount: hospital.dataValues.psychiatristCount,
      patientCount: psychiatristDetails.reduce((total, psychiatrist) => total + psychiatrist.patientsCount, 0),
      psychiatristDetails
    };

    res.status(200).json(response);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Internal server error' });
  }
};*/

export { registerHospital };
