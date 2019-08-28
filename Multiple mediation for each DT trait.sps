* Encoding: UTF-8.
**********************************************   LOOKING AT MEDIATING ROLE OF SOI BEHAVIOUR AND ATTITUDE FOR EACH FACET OF THE DARK TRIAD FOR EACH WORLD REGION BY SEX   **********************************************


*****************************************************************************************************************   ANALYSES FOR WOMEN   *****************************************************************************************************************

*****************************************************   NORTH AMERICA   *****************************************************


USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=1 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
  /SAVE
  /STATISTICS=MEAN.

COMPUTE DTNAW = MEAN (machNAW, npiNAW, psyNAW).
EXECUTE.

***SPLIT FILE BY SEXORIEN TO GET DESCRIPTIVES OF EACH VRAIABLE
  
  DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT age
  /STATISTICS=MEAN STDDEV.


**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNAW soibhNAW soiatNAW d1 d2 age/y = machNAW/m = soibhNAW soiatNAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNAW soibhNAW soiatNAW d1 d2 age/y = machNAW/m = soibhNAW soiatNAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNAW soibhNAW soiatNAW d1 d2 age/y = npiNAW/m = soibhNAW soiatNAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNAW soibhNAW soiatNAW d1 d2 age/y = npiNAW/m = soibhNAW soiatNAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNAW soibhNAW soiatNAW d1 d2 age/y = psyNAW/m = soibhNAW soiatNAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNAW soibhNAW soiatNAW d1 d2 age/y = psyNAW/m = soibhNAW soiatNAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soibhNAW soiatNAW d1 d2 age/y = DTNAW/m = soibhNAW soiatNAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soibhNAW soiatNAW d1 d2 age/y = DTNAW/m = soibhNAW soiatNAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


***total but inverting mediator for the lolz***


compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soi.tot1 d1 d2 age/y = DTNAW/m = soi.tot1/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soi.tot1 d1 d2 age/y = DTNAW/m = soi.tot1/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soi.tot1 d1 d2 age/y = soi.tot1/m = DTNAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAW soi.tot1 d1 d2 age/y = soi.tot1/m = DTNAW /x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.



*****************************************************   CENTRAL/SOUTH AMERICA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=2 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSAW = MEAN (machSAW, npiSAW, psySAW).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSAW soibhSAW soiatSAW d1 d2 age/y = machSAW/m = soibhSAW soiatSAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSAW soibhSAW soiatSAW d1 d2 age/y = machSAW/m = soibhSAW soiatSAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSAW soibhSAW soiatSAW d1 d2 age/y = npiSAW/m = soibhSAW soiatSAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSAW soibhSAW soiatSAW d1 d2 age/y = npiSAW/m = soibhSAW soiatSAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySAW soibhSAW soiatSAW d1 d2 age/y = psySAW/m = soibhSAW soiatSAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySAW soibhSAW soiatSAW d1 d2 age/y = psySAW/m = soibhSAW soiatSAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSAW soibhSAW soiatSAW d1 d2 age/y = DTSAW/m = soibhSAW soiatSAW/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSAW soibhSAW soiatSAW d1 d2 age/y = DTSAW/m = soibhSAW soiatSAW/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   NORTH/WEST EUROPE   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=3 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTNWE = MEAN (machNWE, npiNWE, psyNWE).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNWE soibhNWE soiatNWE d1 d2 age/y = machNWE/m = soibhNWE soiatNWE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNWE soibhNWE soiatNWE d1 d2 age/y = machNWE/m = soibhNWE soiatNWE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNWE soibhNWE soiatNWE d1 d2 age/y = npiNWE/m = soibhNWE soiatNWE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNWE soibhNWE soiatNWE d1 d2 age/y = npiNWE/m = soibhNWE soiatNWE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNWE soibhNWE soiatNWE d1 d2 age/y = psyNWE/m = soibhNWE soiatNWE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNWE soibhNWE soiatNWE d1 d2 age/y = psyNWE/m = soibhNWE soiatNWE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNWE soibhNWE soiatNWE d1 d2 age/y = DTNWE/m = soibhNWE soiatNWE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNWE soibhNWE soiatNWE d1 d2 age/y = DTNWE/m = soibhNWE soiatNWE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


*****************************************************   SOUTH/EAST EUROPE   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=4 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSEE = MEAN (machSEE, npiSEE, psySEE).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSEE soibhSEE soiatSEE d1 d2 age/y = machSEE/m = soibhSEE soiatSEE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSEE soibhSEE soiatSEE d1 d2 age/y = machSEE/m = soibhSEE soiatSEE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSEE soibhSEE soiatSEE d1 d2 age/y = npiSEE/m = soibhSEE soiatSEE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSEE soibhSEE soiatSEE d1 d2 age/y = npiSEE/m = soibhSEE soiatSEE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySEE soibhSEE soiatSEE d1 d2 age/y = psySEE/m = soibhSEE soiatSEE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySEE soibhSEE soiatSEE d1 d2 age/y = psySEE/m = soibhSEE soiatSEE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSEE soibhSEE soiatSEE d1 d2 age/y = DTSEE/m = soibhSEE soiatSEE/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSEE soibhSEE soiatSEE d1 d2 age/y = DTSEE/m = soibhSEE soiatSEE/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


*****************************************************   MIDDLE EAST AND AFRICA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=5 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTMEA = MEAN (machMEA, npiMEA, psyMEA).
EXECUTE.


**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machMEA soibhMEA soiatMEA d1 d2 age/y = machMEA/m = soibhMEA soiatMEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machMEA soibhMEA soiatMEA d1 d2 age/y = machMEA/m = soibhMEA soiatMEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiMEA soibhMEA soiatMEA d1 d2 age/y = npiMEA/m = soibhMEA soiatMEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiMEA soibhMEA soiatMEA d1 d2 age/y = npiMEA/m = soibhMEA soiatMEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyMEA soibhMEA soiatMEA d1 d2 age/y = psyMEA/m = soibhMEA soiatMEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyMEA soibhMEA soiatMEA d1 d2 age/y = psyMEA/m = soibhMEA soiatMEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTMEA soibhMEA soiatMEA d1 d2 age/y = DTMEA/m = soibhMEA soiatMEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTMEA soibhMEA soiatMEA d1 d2 age/y = DTMEA/m = soibhMEA soiatMEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   SOUTH/SOUTHEAST ASIA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=7 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=7 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSSA = MEAN (machSSA, npiSSA, psySSA).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSSA soibhSSA soiatSSA d1 d2 age/y = machSSA/m = soibhSSA soiatSSA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSSA soibhSSA soiatSSA d1 d2 age/y = machSSA/m = soibhSSA soiatSSA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSSA soibhSSA soiatSSA d1 d2 age/y = npiSSA/m = soibhSSA soiatSSA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSSA soibhSSA soiatSSA d1 d2 age/y = npiSSA/m = soibhSSA soiatSSA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySSA soibhSSA soiatSSA d1 d2 age/y = psySSA/m = soibhSSA soiatSSA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySSA soibhSSA soiatSSA d1 d2 age/y = psySSA/m = soibhSSA soiatSSA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSSA soibhSSA soiatSSA d1 d2 age/y = DTSSA/m = soibhSSA soiatSSA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSSA soibhSSA soiatSSA d1 d2 age/y = DTSSA/m = soibhSSA soiatSSA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   EAST ASIA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=8 AND sex=2).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=8 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTEA = MEAN (machEA, npiEA, psyEA).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machEA soibhEA soiatEA d1 d2 age/y = machEA/m = soibhEA soiatEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machEA soibhEA soiatEA d1 d2 age/y = machEA/m = soibhEA soiatEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiEA soibhEA soiatEA d1 d2 age/y = npiEA/m = soibhEA soiatEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiEA soibhEA soiatEA d1 d2 age/y = npiEA/m = soibhEA soiatEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyEA soibhEA soiatEA d1 d2 age/y = psyEA/m = soibhEA soiatEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyEA soibhEA soiatEA d1 d2 age/y = psyEA/m = soibhEA soiatEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTEA soibhEA soiatEA d1 d2 age/y = DTEA/m = soibhEA soiatEA/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTEA soibhEA soiatEA d1 d2 age/y = DTEA/m = soibhEA soiatEA/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.




*****************************************************************************************************************   ANALYSES FOR MEN   *****************************************************************************************************************

*****************************************************   NORTH AMERICA   *****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=1 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
  /SAVE
  /STATISTICS=MEAN.

COMPUTE DTNAM = MEAN (machNAM, npiNAM, psyNAM).
EXECUTE.


**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNAM soibhNAM soiatNAM d1 d2 age/y = machNAM/m = soibhNAM soiatNAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNAM soibhNAM soiatNAM d1 d2 age/y = machNAM/m = soibhNAM soiatNAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNAM soibhNAM soiatNAM d1 d2 age/y = npiNAM/m = soibhNAM soiatNAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNAM soibhNAM soiatNAM d1 d2 age/y = npiNAM/m = soibhNAM soiatNAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNAM soibhNAM soiatNAM d1 d2 age/y = psyNAM/m = soibhNAM soiatNAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNAM soibhNAM soiatNAM d1 d2 age/y = psyNAM/m = soibhNAM soiatNAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAM soibhNAM soiatNAM d1 d2 age/y = DTNAM/m = soibhNAM soiatNAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNAM soibhNAM soiatNAM d1 d2 age/y = DTNAM/m = soibhNAM soiatNAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   CENTRAL/SOUTH AMERICA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=2 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSAM = MEAN (machSAM, npiSAM, psySAM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSAM soibhSAM soiatSAM d1 d2 age/y = machSAM/m = soibhSAM soiatSAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSAM soibhSAM soiatSAM d1 d2 age/y = machSAM/m = soibhSAM soiatSAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSAM soibhSAM soiatSAM d1 d2 age/y = npiSAM/m = soibhSAM soiatSAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSAM soibhSAM soiatSAM d1 d2 age/y = npiSAM/m = soibhSAM soiatSAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySAM soibhSAM soiatSAM d1 d2 age/y = psySAM/m = soibhSAM soiatSAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySAM soibhSAM soiatSAM d1 d2 age/y = psySAM/m = soibhSAM soiatSAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSAM soibhSAM soiatSAM d1 d2 age/y = DTSAM/m = soibhSAM soiatSAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSAM soibhSAM soiatSAM d1 d2 age/y = DTSAM/m = soibhSAM soiatSAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   NORTH/WEST EUROPE   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=3 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTNWM = MEAN (machNWM, npiNWM, psyNWM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNWM soibhNWM soiatNWM d1 d2 age/y = machNWM/m = soibhNWM soiatNWM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machNWM soibhNWM soiatNWM d1 d2 age/y = machNWM/m = soibhNWM soiatNWM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNWM soibhNWM soiatNWM d1 d2 age/y = npiNWM/m = soibhNWM soiatNWM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiNWM soibhNWM soiatNWM d1 d2 age/y = npiNWM/m = soibhNWM soiatNWM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNWM soibhNWM soiatNWM d1 d2 age/y = psyNWM/m = soibhNWM soiatNWM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyNWM soibhNWM soiatNWM d1 d2 age/y = psyNWM/m = soibhNWM soiatNWM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNWM soibhNWM soiatNWM d1 d2 age/y = DTNWM/m = soibhNWM soiatNWM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTNWM soibhNWM soiatNWM d1 d2 age/y = DTNWM/m = soibhNWM soiatNWM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


*****************************************************   SOUTH/EAST EUROPE   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=4 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

 DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSEM = MEAN (machSEM, npiSEM, psySEM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSEM soibhSEM soiatSEM d1 d2 age/y = machSEM/m = soibhSEM soiatSEM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSEM soibhSEM soiatSEM d1 d2 age/y = machSEM/m = soibhSEM soiatSEM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSEM soibhSEM soiatSEM d1 d2 age/y = npiSEM/m = soibhSEM soiatSEM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSEM soibhSEM soiatSEM d1 d2 age/y = npiSEM/m = soibhSEM soiatSEM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySEM soibhSEM soiatSEM d1 d2 age/y = psySEM/m = soibhSEM soiatSEM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySEM soibhSEM soiatSEM d1 d2 age/y = psySEM/m = soibhSEM soiatSEM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSEM soibhSEM soiatSEM d1 d2 age/y = DTSEM/m = soibhSEM soiatSEM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSEM soibhSEM soiatSEM d1 d2 age/y = DTSEM/m = soibhSEM soiatSEM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.


*****************************************************   MIDDLE EAST AND AFRICA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=5 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTMAM = MEAN (machMAM, npiMAM, psyMAM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machMAM soibhMAM soiatMAM d1 d2 age/y = machMAM/m = soibhMAM soiatMAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machMAM soibhMAM soiatMAM d1 d2 age/y = machMAM/m = soibhMAM soiatMAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiMAM soibhMAM soiatMAM d1 d2 age/y = npiMAM/m = soibhMAM soiatMAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiMAM soibhMAM soiatMAM d1 d2 age/y = npiMAM/m = soibhMAM soiatMAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyMAM soibhMAM soiatMAM d1 d2 age/y = psyMAM/m = soibhMAM soiatMAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyMAM soibhMAM soiatMAM d1 d2 age/y = psyMAM/m = soibhMAM soiatMAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTMAM soibhMAM soiatMAM d1 d2 age/y = DTMAM/m = soibhMAM soiatMAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTMAM soibhMAM soiatMAM d1 d2 age/y = DTMAM/m = soibhMAM soiatMAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   SOUTH/SOUTHEAST ASIA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=7 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=7 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTSSM = MEAN (machSSM, npiSSM, psySSM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSSM soibhSSM soiatSSM d1 d2 age/y = machSSM/m = soibhSSM soiatSSM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machSSM soibhSSM soiatSSM d1 d2 age/y = machSSM/m = soibhSSM soiatSSM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSSM soibhSSM soiatSSM d1 d2 age/y = npiSSM/m = soibhSSM soiatSSM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiSSM soibhSSM soiatSSM d1 d2 age/y = npiSSM/m = soibhSSM soiatSSM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySSM soibhSSM soiatSSM d1 d2 age/y = psySSM/m = soibhSSM soiatSSM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psySSM soibhSSM soiatSSM d1 d2 age/y = psySSM/m = soibhSSM soiatSSM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSSM soibhSSM soiatSSM d1 d2 age/y = DTSSM/m = soibhSSM soiatSSM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTSSM soibhSSM soiatSSM d1 d2 age/y = DTSSM/m = soibhSSM soiatSSM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

*****************************************************   EAST ASIA   ****************************************************

USE ALL.
COMPUTE filter_$=(soi.tot<100 AND w.region=8 AND sex=1).
VARIABLE LABELS filter_$ 'soi.tot<100 AND w.region=8 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=soi.beh soi.att MACH.TOT NPI.TOT SRP.TOT
 /SAVE
  /STATISTICS=MEAN.

COMPUTE DTEAM = MEAN (machEAM, npiEAM, psyEAM).
EXECUTE.

**********   Machiavellianism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machEAM soibhEAM soiatEAM d1 d2 age/y = machEAM/m = soibhEAM soiatEAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = machEAM soibhEAM soiatEAM d1 d2 age/y = machEAM/m = soibhEAM soiatEAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Narcissism   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiEAM soibhEAM soiatEAM d1 d2 age/y = npiEAM/m = soibhEAM soiatEAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = npiEAM soibhEAM soiatEAM d1 d2 age/y = npiEAM/m = soibhEAM soiatEAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Psychopathy   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyEAM soibhEAM soiatEAM d1 d2 age/y = psyEAM/m = soibhEAM soiatEAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = psyEAM soibhEAM soiatEAM d1 d2 age/y = psyEAM/m = soibhEAM soiatEAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.

**********   Total   ********** 

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTEAM soibhEAM soiatEAM d1 d2 age/y = DTEAM/m = soibhEAM soiatEAM/x = d1/total = 1/model = 4/ boot = 10000/seed = 3991.

compute d1 = (sexorien = 1).
compute d2 = (sexorien = 2).
process vars = DTEAM soibhEAM soiatEAM d1 d2 age/y = DTEAM/m = soibhEAM soiatEAM/x = d2/total = 1/model = 4/ boot = 10000/seed = 3991/detail = 0.
