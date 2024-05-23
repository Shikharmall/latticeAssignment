# Assignment

## Backend
   ### Technologies Used
      Node JS, Express JS, Sequelize, MySQL
   ### Run Locally
      npm install
      nodemon index.js
   ### API
      base_url = http://localhost:8080/api/v1

      Create hospital
         {{base_url}}/hospital/registerHospital    

      Create psychiatrist   
         {{base_url}}/psychiatrist/registerPsychiatrist   

      Create patient
         {{base_url}}/patient/registerPatient

      Fetch all the psychiatrists, their count along with IDs and patient details for a hospital.  Assume in the request body the frontend will pass HOSPITAL ID
         {{base_url}}/psychiatrist/fetchPsychiatrists   
