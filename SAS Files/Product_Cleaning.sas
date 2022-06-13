*Data cleansing of Product;
libname MyLib '/home/u59819030/';
data MyLib.Product;
infile '/home/u59819030/Project/Product_Cleaned_1.txt' dsd delimiter=';' firstobs=2;
input PRODID $ DESCRIPTION :$40. PRICE1 $ PRICE2 $ UNITCOST $ PRODTYPEID $ TYPEDESCRIPTION :$40. BUID $ NAME :$40. ABBREV :$40. SUPPLIERNAME :$40. Addr1 $ Addr2 $ City $ State $ Zip $;
run;
* Duplicate records;
proc sort data=mylib.Product noduprecs;
	by PRODID;
	run;
proc print data=mylib.PECinvoice;
	title "PECmanufacturingCosts";
	run;
proc freq data=MyLib.Product;
tables DESCRIPTION TYPEDESCRIPTION NAME ABBREV SUPPLIERNAME City State /nopercent missing;
run;
proc print data=mylib.PECinvoice;
	title "PECmanufacturingCosts";
	where custID is null;
	run;

proc export data=MyLib.PECinvoice outfile='/home/u59819030/Project/PEC_Invoice_Final_clean.txt' 
dbms=dlm
replace;
delimiter=';';
run;