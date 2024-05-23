# Assignment

## Backend
   ### Technologies Used
      Node JS, Express JS, Sequelize, MySQL
   ### Run Locally
      npm install
      nodemon index.js
   ### API
      Postman link - https://api.postman.com/collections/31807642-acb8865f-385b-4244-b42c-f9ec0caf5083?access_key=PMAT-01HYJ6Q40PJ7HMAD3959ZRSK7G
      
      base_url = http://localhost:8080/api/v1

      Create hospital
         {{base_url}}/hospital/registerHospital    

      Create psychiatrist   
         {{base_url}}/psychiatrist/registerPsychiatrist   

      Create patient
         {{base_url}}/patient/registerPatient

      Fetch all the psychiatrists, their count along with IDs and patient details for a hospital.  Assume in the request body the frontend will pass HOSPITAL ID
         {{base_url}}/psychiatrist/fetchPsychiatrists   
