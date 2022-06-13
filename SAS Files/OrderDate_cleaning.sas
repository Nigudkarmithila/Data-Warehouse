
*Data cleansing of OrderDate;
libname MyLib '/home/u59819030/';
data MyLib.OrderDate;
infile '/home/u59819030/Project/OrderDate_Final_Clean.txt' dsd delimiter=';' firstobs=2;
input Order_date_SK $ orderDate $ Year $ Quarter $ Month $ Week $ FiscalYear $ FiscalQuarter $ FiscalMonth $ FiscalWeek$;
* Duplicate records;
proc sort data=mylib.OrderDate noduprecs;
	by Order_date_SK;
	run;
proc print data=mylib.OrderDate;
	title "PECmanufacturingCosts";
	run;
proc freq data=MyLib.OrderDate;
tables Year/nopercent missing;
run;


proc export data=MyLib.OrderDate outfile='/home/u59819030/Project/Customer_Clean.txt' 
dbms=dlm
replace;
delimiter=';';
run;