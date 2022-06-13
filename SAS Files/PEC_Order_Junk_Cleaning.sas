
*Data cleansing of Junk;
libname MyLib '/home/u59819030/';
data MyLib.Junk;
infile '/home/u59819030/Project/PEC_Order_Junk_Dim_Final_clean.txt' dsd delimiter=';' firstobs=2;
input PEC_Order_Junk_SK $ Shipment_method $ Payment_method $ Order_method;
* Duplicate records;
proc sort data=mylib.Junk noduprecs;
	by PEC_Order_Junk_SK;
	run;

proc freq data=MyLib.Junk;
tables Shipment_method Payment_method Order_method/nopercent missing;
run;


proc export data=MyLib.Junk outfile='/home/u59819030/Project/Junk_Clean.txt' 
dbms=dlm
replace;
delimiter=';';
run;