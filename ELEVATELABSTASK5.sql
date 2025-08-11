#"Join Employee and Department Tables on DEPTID
SELECT * FROM EINFO INNER JOIN EDEPT ON EINFO.DEPTID=edept.DEPTID; 
/*
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		10	Sales
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		10	Sales
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	20	Accounts
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	20	Accounts
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	10	Sales
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	30	IT
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	30	IT
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	10	Sales
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	30	IT
*/

#Retrieve All Records from EINFO and EDEPT (Cartesian Product)
SELECT * FROM EINFO ,EDEPT; 
/*
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		50	HR
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		40	Marketing
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		30	IT
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		20	Accounts
101	Rajaram	10	Sales Executive	105	2019-01-10	12000.00		10	Sales
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		50	HR
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		40	Marketing
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		30	IT
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		20	Accounts
102	Rajesh Kumar	10	Sales Executive	109	2021-02-15	10000.00		10	Sales
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	50	HR
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	40	Marketing
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	30	IT
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	20	Accounts
103	Naveen	20	Accounts Manager		2023-01-19	10000.00	100	10	Sales
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	50	HR
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	40	Marketing
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	30	IT
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	20	Accounts
104	Shabeer	20	Junior Executive	103	2023-02-26	10000.00	300	10	Sales
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	50	HR
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	40	Marketing
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	30	IT
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	20	Accounts
105	Suresh Kumar	10	Sales Manager		2016-03-29	38000.00	100	10	Sales
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	50	HR
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	40	Marketing
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	30	IT
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	20	Accounts
106	Kesavan	30	Project Manager		2018-10-31	60000.00	300	10	Sales
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	50	HR
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	40	Marketing
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	30	IT
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	20	Accounts
108	Ashok Kumar	30	Testing	106	2023-02-17	12000.00	100	10	Sales
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	50	HR
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	40	Marketing
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	30	IT
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	20	Accounts
109	Charles	10	Sales Manager		2024-01-16	38000.00	300	10	Sales
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	50	HR
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	40	Marketing
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	30	IT
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	20	Accounts
110	Ashok	30	Developer	106	2024-03-13	45000.00	200	10	Sales
*/

 #Fetch Employee Details with City Name Using INNER JOIN on CITYID
 SELECT I.EMPID,I.DESIG,I.SALARY,E.CITY
 FROM EINFO i
 JOIN  ECITY  E ON I.CITYID=E.CITYID;
 /*
 103	Accounts Manager	10000.00	Chennai
104	Junior Executive	10000.00	Delhi
105	Sales Manager	38000.00	Chennai
106	Project Manager	60000.00	Delhi
108	Testing	12000.00	Chennai
109	Sales Manager	38000.00	Delhi
110	Developer	45000.00	Bangalore
*/
 
#Get Contact Details of Employee Named RAJARAM Using INNER JOIN
SELECT E.EMPID,E.ENAME,C.CONTACT FROM EINFO E JOIN ECON C ON E.EMPID=C.EMPID WHERE E.ENAME="RAJARAM";
 /*
 101	Rajaram	raja@ssk.com
101	Rajaram	7787543211
*/

#List All Employees with Their City (Using LEFT JOIN on CITYID)
 SELECT  I.EMPID,I.ENAME,I.SALARY,C.CITY
 FROM EINFO I LEFT JOIN ECITY C ON I.CITYID=C.CITYID; #LEFT JOIN
 /*
 101	Rajaram	12000.00	
102	Rajesh Kumar	10000.00	
103	Naveen	10000.00	Chennai
104	Shabeer	10000.00	Delhi
105	Suresh Kumar	38000.00	Chennai
106	Kesavan	60000.00	Delhi
108	Ashok Kumar	12000.00	Chennai
109	Charles	38000.00	Delhi
110	Ashok	45000.00	Bangalore
*/

#Show All Cities with Their Employees Using RIGHT JOIN on CITYID
 SELECT I.EMPID ,I.ENAME,I.SALARY,C.CITY
 FROM EINFO I RIGHT JOIN ECITY C ON I.CITYID=C.CITYID; #RIGHT JOIN
 /*
 108	Ashok Kumar	12000.00	Chennai
105	Suresh Kumar	38000.00	Chennai
103	Naveen	10000.00	Chennai
110	Ashok	45000.00	Bangalore
109	Charles	38000.00	Delhi
106	Kesavan	60000.00	Delhi
104	Shabeer	10000.00	Delhi
			Pune
			Hyderabad
*/

#List Employees with Their Manager Names Using Self JOIN on EINFO
 SELECT A.EMPID ,A.ENAME,A.DESIG,M.ENAME  FROM EINFO A JOIN EINFO M ON A.MANAGERID=M.EMPID;   
 /*
 104	Shabeer	Junior Executive	Naveen
101	Rajaram	Sales Executive	Suresh Kumar
110	Ashok	Developer	Kesavan
108	Ashok Kumar	Testing	Kesavan
102	Rajesh Kumar	Sales Executive	Charles
*/
 
 
 #Combine All Employees and Cities Using LEFT and RIGHT JOIN with UNION
 SELECT I.EMPID ,I.ENAME,I.SALARY,C.CITY
 FROM EINFO I LEFT JOIN ECITY C ON I.CITYID=C.CITYID
 UNION 
 SELECT I.EMPID,I.ENAME,I.SALARY,C.CITY
 FROM  EINFO I RIGHT JOIN ECITY C ON I.CITYID=C.CITYID; #FULL JOIN
 
 /*
 101	Rajaram	12000.00	
102	Rajesh Kumar	10000.00	
103	Naveen	10000.00	Chennai
104	Shabeer	10000.00	Delhi
105	Suresh Kumar	38000.00	Chennai
106	Kesavan	60000.00	Delhi
108	Ashok Kumar	12000.00	Chennai
109	Charles	38000.00	Delhi
110	Ashok	45000.00	Bangalore
			Pune
			Hyderabad
            
*/