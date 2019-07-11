-- insert data into tables of Library database
-- script date: Mars 04,2019
-- Developed by Bianyu WANG(1896181) , Hongyu ZHAO(1895825), Yangyang MA(1896156), Zhaolong Wang(1896216 ) 

-- in order toinsert data into tables, switch to the Library database
-- add a statement that specifies the script runs in the context of the Library database


use Library;
go


--bulk insert [Member].[Members]
--from 'C:\Users\ipd\OneDrive - John Abbott College\sql2\Library\Library\CSV\Member.csv'
--with (
--        format='csv',
--		firstrow = 1

--	 )
--;

--bulk insert [Member].[Adults]
--from 'C:\Users\ipd\OneDrive - John Abbott College\sql2\Library\Library\CSV\Adults.csv'
--with (
--        format='csv',
--		firstrow = 1

--	 )
--;








bulk insert [Member].[Adults]
from 'C:\Users\ipd\Downloads\Library\Library\data\Adult.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\n' ,
		FIELDTERMINATOR = '\t' 

	 )
;
select * from [Member].[Adults];



bulk insert [Member].[Members]
from 'C:\Users\ipd\Downloads\Library\Library\data\member.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\n' ,
		FIELDTERMINATOR = '\t' 

	 )
;
select * from [Member].[Members];



bulk insert [Member].[Juveniles]
from 'C:\Users\ipd\Downloads\Library\Library\data\juvenile.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\n' ,
		FIELDTERMINATOR = '\t' 

	 )
;
select * from [Member].[Juveniles]


bulk insert [Operation].[Copies]
from 'C:\Users\ipd\Downloads\Library\Library\data\copy.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\n' ,
		FIELDTERMINATOR = '\t' 

	 )
;
select * from [Operation].[Copies]






bulk insert [Operation].[Items]
from 'C:\Users\ipd\Downloads\Library\Library\data\item.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\r' ,
		FIELDTERMINATOR = '\t' 

	 )
;
select * from [Operation].[Items]


bulk insert [Operation].[Loanhist]
from 'C:\Users\ipd\Downloads\Library\Library\data\loanhist111.txt'
with (
   
		firstrow = 1,
		ROWTERMINATOR = '\r' ,
		FIELDTERMINATOR = ',' 

	 )
;
select * from [Operation].[Loanhist]
