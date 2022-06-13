
*Data cleansing of Supplier;
libname MyLib '/home/u59819030/';
data MyLib.Supplier;
infile '/home/u59819030/Project/Supplier_Final_clean.txt' dsd delimiter=';' firstobs=2;
input Supplier_SK $ Supplier_ID $ Name $ Addr1 $ Addr2 $ City $ State $ Zip;
* Duplicate records;
proc sort data=mylib.Supplier noduprecs;
	by Supplier_SK;
	run;

proc freq data=MyLib.Supplier;
tables Name City State Supplier_ID /nopercent missing;
run;


proc export data=MyLib.Supplier outfile='/home/u59819030/Project/Supplier_clean.txt' 
dbms=dlm
replace;
delimiter=';';
run;