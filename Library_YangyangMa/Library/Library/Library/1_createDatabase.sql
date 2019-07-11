-- create Library database
-- script date: february 26,2019
-- Developed by Bianyu WANG(1896181) , Hongyu ZHAO(1895825), Yangyang MA(1896156), Zhaolong Wang(1896216 ) 

-- in order to create a new database, switch to the master database
-- add a statement that specifies the script runs in the context of the master database

--switch to master database

use master
;
go --include end of batch markers(go statement)


 create database Library
  on primary
  (
  -- rows data file name
  name='Library',
  -- row data path and filename
  filename='C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Library.mdf',
  --rows fata file size
  size= 12MB,
  -- rows data file growth
  filegrowth=2mb,
  -- rows data maximum size
  maxsize=100mb
  )
  log on
  (
  --logicl log file name 
  name='Library_log',
  --log path and filename
  filename='C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Library_log.ldf',
  --log file size
  size= 3MB,
  -- log file growth
  filegrowth=10%,
  -- log maximum size
  maxsize=25mb
  )
  ;
  go





 execute sp_helpdb Library
  ;
  go
