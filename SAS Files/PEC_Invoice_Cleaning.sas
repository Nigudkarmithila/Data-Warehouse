*Data cleansing of PECinvoice;
libname MyLib '/home/u59819030/';
data MyLib.PECinvoice;
infile '/home/u59819030/Project/PEC_Invoice_CleanedFiles.txt.txt' dsd delimiter=';' firstobs=2;
input Invoice custID $ prodid $ amt $ qty $ shipMethod $ shipCost $ paymentMethod $ orderMethod $ orderDate $ discounted $ SalesDate $;
run;
* Duplicate records;
proc sort data=mylib.PECinvoice noduprecs;
	by Invoice;
	run;
proc print data=mylib.PECinvoice;
	title "PECmanufacturingCosts";
	run;
proc freq data=MyLib.PECinvoice;
tables amt shipMethod prodid orderMethod paymentMethod discounted/nopercent missing;
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