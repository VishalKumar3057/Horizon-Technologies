use [Patient Registration ]
select * from [dbo].[Partner_Partner_Mapping]
select * from [dbo].[Patient_Info]
select Patient_Name from [dbo].[Patient_Info]

***b. Write SQL query to only get the information (Patient_ID, Patient_Name, 
Patient_Gender_Patient_Phone, Province and Created_at) of primary patients

SELECT m.Patient_ID, i.Patient_Name, i.Patient_Gender, i.Patient_Phone, i.Province, i.Created_at
FROM [dbo].[Partner_Partner_Mapping] m 
INNER JOIN [dbo].[Patient_Info] i
ON m.Patient_ID = i.Patient_ID

SELECT DISTINCT  m.Patient_ID, i.Patient_Name, i.Patient_Gender, i.Patient_Phone, i.Province, i.Created_at
   FROM [Partner_Partner_Mapping] m, [dbo].[Patient_Info] i
   WHERE m.Patient_ID = i.Patient_ID