*Data cleansing of Customer;
libname MyLib '/home/u59819030/';
data MyLib.Customer;
infile '/home/u59819030/Project/Customer_Final_Clean.txt' dsd delimiter=';' firstobs=2;
input Customer_SK $ CustomerID $ CustomerName $ Addr1 $ Addr2 $ City $ state $ Zip $ CustTypeID $ City
* Duplicate records;
proc sort data=mylib.Customer noduprecs;
	by PRODID;
	run;
proc print data=mylib.Customer;
	title "PECmanufacturingCosts";
	run;
proc freq data=MyLib.Customer;
tables City City City CustomerName/nopercent missing;
run;


proc export data=MyLib.Customer outfile='/home/u59819030/Project/Customer_Clean.txt' 
dbms=dlm
replace;
delimiter=';';
run;