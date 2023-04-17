/*
  Start by selecting a question by pressing 'Start' or 'View All Questions'.
  Use the resources and information about the database from the left panel to help.
  Press the run button to execute the query.
  Question is automatically validated every time you execute the query.
  Make your output match the expected output.
 
  If you can't solve a question you can press 'Skip Question' to view the solution.
 
  Keybinds:
    [ctrl + enter]: Execute the SQL
    [ctrl + q]: Auto-format the SQL
*/
SELECT first_name, last_name, gender FROM patients
WHERE gender = 'M'


SELECT first_name,
	   last_name 
FROM patients
WHERE allergies is NULL

SELECT first_name
FROM patients
WHERE first_name like 'C%';

SELECT first_name,
	   last_name	
from patients
WHERE weight between 100 and 120;

update patients
set allergies = 'NKA'
where allergies is NULL;

select concat(first_name,' ', last_name) as "Full name"
from patients

select p.first_name, p.last_name, a.province_name
from patients P
inner join province_names A
where p.province_id = a.province_id

select count(birth_date)
from patients
where birth_date like '2010%';

select first_name, last_name, max(height) as 'Max height'
from patients;

select * from patients
where patient_id in (1,45,534,879,1000);

select count(patient_id) as 'Admissions'
from admissions

select * from admissions
where admission_date = discharge_date

select patient_id, count(patient_id) as 'Number of admissions' from admissions
where patient_id = 579

SELECT distinct city
FROM patients
where province_id = 'NS'

SELECT first_name, last_name, birth_date
from patients
where height > 160
and weight > 70;
