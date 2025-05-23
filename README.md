# Medical Laboratory Database System

##  Project Summary
This project implements a database system for a medical laboratory using MySQL. It allows the management of patients, laboratorians, medical tests, test components, and results. The system supports data storage, querying, and reporting for laboratory operations.

## Features
- Store detailed information about patients and laboratorians.
- Track medical tests and their related components.
- Record test results with date, patient, and doctor.
- Execute common queries to analyze the lab activities and resources.
-  Includes a trigger to log inserted test results.

##  Technologies Used
- MySQL (Workbench)
- SQL (DDL, DML, Queries, Triggers)
- MySQL Workbench Diagram (ERD)
- UML Design

##  How to Reproduce the Project

1. **Download & Open the SQL Script:**
   - Use the provided `.sql` files in MySQL Workbench.

2. **Execute the Scripts:**
   - Run the `create_tables.sql` script first.
   - Then execute `load_data.sql` to insert data.

3. **Reverse Engineer the ER Diagram:**
   - Go to `Database → Reverse Engineer` and select the created database to generate the ER diagram.

4. **Run Queries:**
   - Use the queries section in the script to retrieve:
     - Patients who performed CBC in the last year.
     - Components below minimum quantity.
     - Total money paid by a patient.

##  Authors
- Soha Yehia  
- Omar Hisham  
- Nour Said  
- Haneen Mohamed
- ## 📹 Project Presentation Video

Watch our full project explanation and demo on Google Drive:  
👉 [Click here to watch the video]((https://drive.google.com/file/d/124fM58BaWwtVxYB4-5LGHkY80a4ShEbN/view?usp=sharing))

