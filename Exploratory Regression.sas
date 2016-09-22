Libname JBlib '/data/workgroup/research/JillB/EmployersSurvey';
data work.analyses;
	set JBlib.ppi;
	if Q24b1=888 then Q24b1=.;
	if Q24b2=888 then Q24b2=.;
	if Q24b3=888 then Q24b3=.;
	if Q24b4=888 then Q24b4=.;
	if Q24b5=888 then Q24b5=.;
	if Q24b6=888 then Q24b6=.;
	if Q12=7 then Q12=.;
run;


/*Length of newly-licensed LPN/VN orientation (Q25a1) predicting Turnover of newly-licensed LPN/VNs (Q15a)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15a = Q25a1 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
	   *ID variables; 
       *PLOT <yvariable*xvariable> <=symbol>;
	   *PRINT < options > < ANOVA > < MODELDATA >; 
run;

/*Length of newly-licensed RN orientation (Q25b1)predicting Turnover of newly-licensed RNs (Q15b)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15b = Q25b1 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;


/*Length of experienced LPN/VN orientation (Q25c1)predicting Turnover of experienced LPN/VNs (Q15c)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15c = Q25c1 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN orientation (Q25d1)predicting Turnover of experienced RNs (Q15d)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15d = Q25d1 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;


/*Length of newly-licensed LPN/VN mentorship (Q25a2) predicting Turnover of newly-licensed LPN/VNs (Q15a)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15a = Q25a2 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN mentorship (Q25b2) predictingTurnover of newly-licensed RNs (Q15b)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15b = Q25b2 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;


/*Length of experienced LPN/VN mentorship (Q25c2)predicting Turnover of experienced LPN/VNs (Q15c)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15c = Q25c2 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN mentorship (Q25d2)predicting Turnover of experienced RNs (Q15d)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15d = Q25d2 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN transition to practice program (Q25a3) predicting Turnover of newly-licensed LPN/VNs (Q15a)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15a = Q25a3 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN transition to practice program (Q25b3) predicting Turnover of newly-licensed RNs (Q15b)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15b = Q25b3 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;
/*Length of experienced LPN/VN transition to practice program (Q25c3) predicting Turnover of experienced LPN/VNs (Q15c)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15c = Q25c3 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN transition to practice program (Q25d3) predicting Turnover of experienced RNs (Q15d)
Remember filter*/

PROC REG DATA=work.analyses;
       MODEL Q15d = Q25d3 /	SELECTION=NONE STB;
	   WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN orientation (Q25a1) predicting Retention of newly-licensed nurses (Q13)*/

PROC REG DATA=work.analyses;
       MODEL Q13 = Q25a1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN orientation (Q25b1) predicting Retention of newly-licensed nurses (Q13)*/

PROC REG DATA=work.analyses;
       MODEL Q13 = Q25b1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN orientation (Q25c1) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25c1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;
/*Length of experienced RN orientation (Q25d1) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25d1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of foreign-educated nurse orientation (Q25e1) predicting Retention of foreign-educated nurses (Q12)*/

PROC REG DATA=work.analyses;
       MODEL Q12 = Q25e1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;


/*Length of newly-licensed LPN/VN mentorship (Q25a2) predicting Retention of newly-licensed nurses (Q13)*/
PROC REG DATA=work.analyses;
       MODEL Q13 = Q25a2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN mentorship (Q25b2) predicting Retention of newly-licensed nurses (Q13)*/

PROC REG DATA=work.analyses;
       MODEL Q13 = Q25b2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN mentorship (Q25c2) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25c2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN mentorship (Q25d2) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25d2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of foreign-educated nurse mentorship (Q25e2) predicting Retention of foreign-educated nurses (Q12)*/

PROC REG DATA=work.analyses;
       MODEL Q12 = Q25e2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN transition to practice program (Q25a3) predicting Retention of newly-licensed nurses (Q13)*/

PROC REG DATA=work.analyses;
       MODEL Q13 = Q25a3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN transition to practice program (Q25b3) predicting Retention of newly-licensed nurses (Q13)*/

PROC REG DATA=work.analyses;
       MODEL Q13 = Q25b3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN transition to practice program (Q25c3) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25c3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN transition to practice program (Q25d3) predicting Retention of experienced nurses (Q14)*/

PROC REG DATA=work.analyses;
       MODEL Q14 = Q25d3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of foreign-educated nurse transition to practice program (Q25e3) predicting Retention of foreign-educated nurses(Q12)*/

PROC REG DATA=work.analyses;
       MODEL Q12 = Q25e3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN orientation (Q25a1) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25a1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN orientation (Q25b1) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25b1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN orientation (Q25c1) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25c1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN orientation (Q25d1) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25d1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN mentorship (Q25a2) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25a2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN mentorship (Q25b2) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25b2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN mentorship (Q25c2) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25c2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER;  
run;

/*Length of experienced RN mentorship (Q25d2) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25d2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN transition to practice program (Q25a3) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25a3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN transition to practice program (Q25b3) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25b3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN transition to practice program (Q25c3) predicting % LPN/VNs vacant (Q4c)*/

PROC REG DATA=work.analyses;
       MODEL Q4c = Q25c3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN transition to practice program (Q25d3) predicting % of RNs vacant (Q4d)*/

PROC REG DATA=work.analyses;
       MODEL Q4d = Q25d3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/********************************************************************************************
*********************************************************************************************
********************************************************************************************/
/*Length of newly-licensed LPN/VN orientation (Q25a1) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25a1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN orientation (Q25b1) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25b1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN orientation (Q25c1) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25c1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN orientation (Q25d1) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25d1 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN mentorship (Q25a2) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25a2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN mentorship (Q25b2) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25b2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN mentorship (Q25c2) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25c2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN mentorship (Q25d2) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25d2 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed LPN/VN transition to practice program (Q25a3) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25a3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of newly-licensed RN transition to practice program (Q25b3) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25b3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced LPN/VN transition to practice program (Q25c3) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25c3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Length of experienced RN transition to practice program (Q25d3) predicting likelihood of errors (Q39)*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q25d3 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;


/********************************************************************************************
*********************************************************************************************
********************************************************************************************/
/*Newly-licensed LPN/VN mentorship program versus no mentorship program (Q24a2) on Turnover of newly-licensed LPN/VNs (Q15a)
(remember filter)*/


Libname JBlib '/data/workgroup/research/JillB/EmployersSurvey';
data work.analyses_Q15filtered;
	set JBlib.ppi;
	if Q15_FILTER='0' then delete;
	if Q24b1=888 then Q24b1=.;
	if Q24b2=888 then Q24b2=.;
	if Q24b3=888 then Q24b3=.;
	if Q24b4=888 then Q24b4=.;
	if Q24b5=888 then Q24b5=.;
	if Q24b6=888 then Q24b6=.;
	if Q12=7 then Q12=.;
run;

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24a2; 
		MODEL Q15a = Q24a2; 
		MEANS Q24a2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15a;
		CLASS Q24a2 / ORDER=UNFORMATTED ASCENDING;
run;

/*Newly-licensed RN mentorship program versus no mentorship program (Q24b2) on Turnover of newly-licensed RNs (Q15b)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24b2; 
		MODEL Q15b = Q24b2; 
		MEANS Q24b2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15b;
		CLASS Q24b2 / ORDER=UNFORMATTED ASCENDING;
		WEIGHT Q15_FILTER;
RUN;

/*Experienced LPN/VN mentorship program versus no mentorship program (Q24c2) on Turnover of experienced LPN/VNs (Q15c)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24c2; 
		MODEL Q15c = Q24c2; 
		MEANS Q24c2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15c;
		CLASS Q24c2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN mentorship program versus no mentorship program (Q24d2) on Turnover of experienced RNs (Q15d)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24d2; 
		MODEL Q15d = Q24d2; 
		MEANS Q24d2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15d;
		CLASS Q24d2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed LPN/VN transition to practice program versus no transition to practice program (Q24a3) on Turnover of newly-licensed LPN/VNs (Q15a)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24a3; 
		MODEL Q15a = Q24a3; 
		MEANS Q24a3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15a;
		CLASS Q24a3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN transition to practice program versus no transition to practice program (Q24b3) on Turnover of newly-licensed RNs (Q15b)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24b3; 
		MODEL Q15b = Q24b3;  
		MEANS Q24b3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15b;
		CLASS Q24b3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN transition to practice program versus no transition to practice program (Q24c3) on Turnover of experienced LPN/VNs (Q15c)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24c3; 
		MODEL Q15c = Q24c3; 
		MEANS Q24c3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15c;
		CLASS Q24c3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN transition to practice program versus no transition to practice program (Q24d3) on Turnover of experienced RNs (Q15d)
(remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered; 
		CLASS Q24d3; 
		MODEL Q15d = Q24d3; 
		MEANS Q24d3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15d;
		CLASS Q24d3 / ORDER=UNFORMATTED ASCENDING;
RUN;


Libname JBlib '/data/workgroup/research/JillB/EmployersSurvey';
data work.analyses;
	set JBlib.ppi;
	if Q24b1=888 then Q24b1=.;
	if Q24b2=888 then Q24b2=.;
	if Q24b3=888 then Q24b3=.;
	if Q24b4=888 then Q24b4=.;
	if Q24b5=888 then Q24b5=.;
	if Q24b6=888 then Q24b6=.;
	if Q12=7 then Q12=.;
run;

/*Newly-licensed LPN/VN mentorship program versus no mentorship program (Q24a2) on Retention of newly-licensed nurses (Q13)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a2; 
		MODEL Q13 = Q24a2; 
		MEANS Q24a2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q13;
		CLASS Q24a2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN mentorship program versus no mentorship program (Q24b2) on Retention of newly-licensed nurses (Q13)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b2; 
		MODEL Q13 = Q24b2; 
		MEANS Q24b2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q13;
		CLASS Q24b2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN mentorship program versus no mentorship program (Q24c2) on Retention of experienced nurses (Q14)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c2; 
		MODEL Q14 = Q24c2; 
		MEANS Q24c2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q14;
		CLASS Q24c2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN mentorship program versus no mentorship program (Q24d2) on Retention of experienced nurses (Q14)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d2; 
		MODEL Q14 = Q24d2; 
		MEANS Q24d2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q14;
		CLASS Q24d2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Foreign-educated nurse mentorship program versus no mentorship program (Q24e2) on Retention of foreign-educated nurses (Q12)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24e2; 
		MODEL Q12 = Q24e2; 
		MEANS Q24e2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q12;
		CLASS Q24e2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed LPN/VN transition to practice program versus no transition to practice program (Q24a3) on Retention of newly-licensed nurses (Q13)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a3; 
		MODEL Q13 = Q24a3; 
		MEANS Q24a3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q13;
		CLASS Q24a3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN transition to practice program versus no transition to practice program (Q24b3) on Retention of newly-licensed nurses (Q13)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b3; 
		MODEL Q13 = Q24b3; 
		MEANS Q24b3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q13;
		CLASS Q24b3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN transition to practice program versus no transition to practice program (Q24c3) on Retention of experienced nurses (Q14)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c3; 
		MODEL Q14 = Q24c3; 
		MEANS Q24c3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q14;
		CLASS Q24c3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN transition to practice program versus no transition to practice program (Q24d3) on Retention of experienced nurses (Q14)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d3; 
		MODEL Q14 = Q24d3; 
		MEANS Q24d3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q14;
		CLASS Q24d3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Foreign-educated nurse transition to practice program versus no transition to practice program (Q24e3) on Retention of foreign-educated nurses (Q12)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24e3; 
		MODEL Q12 = Q24e3; 
		MEANS Q24e3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q12;
		CLASS Q24e3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed LPN/VN mentorship program versus no mentorship program (Q24a2) on % LPN/VNs Vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a2; 
		MODEL Q4c = Q24a2; 
		MEANS Q24a2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24a2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN mentorship program versus no mentorship program (Q24b2) on % RNs Vacant (Q4d)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b2; 
		MODEL Q4d = Q24b2; 
		MEANS Q24b2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4d;
		CLASS Q24b2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN mentorship program versus no mentorship program (Q24c2) on % LPN/VNs Vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c2; 
		MODEL Q4c = Q24c2; 
		MEANS Q24c2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24c2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN mentorship program versus no mentorship program (Q24d2) on % of RNs vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d2; 
		MODEL Q4c = Q24d2; 
		MEANS Q24d2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24d2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed LPN/VN transition to practice program versus no transition to practice program (Q24a3) on % LPN/VNs Vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a3; 
		MODEL Q4c = Q24a3; 
		MEANS Q24a3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24a3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN transition to practice program versus no transition to practice program (Q24b3) on % RNs Vacant (Q4d)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b3; 
		MODEL Q4d = Q24b3; 
		MEANS Q24b3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4d;
		CLASS Q24b3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN transition to practice program versus no transition to practice program (Q24c3) on % LPN/VNs Vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c3; 
		MODEL Q4c = Q24c3; 
		MEANS Q24c3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24c3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN transition to practice program versus no transition to practice program (Q24d3) on % of RNs vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d3; 
		MODEL Q4c = Q24d3; 
		MEANS Q24d3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q24d3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/********************************************************************************************
*********************************************************************************************
********************************************************************************************/
/*Newly-licensed LPN/VN mentorship program versus no mentorship program (Q24a2) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a2; 
		MODEL Q39 = Q24a2;  
		MEANS Q24a2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24a2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN mentorship program versus no mentorship program (Q24b2) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b2; 
		MODEL Q39 = Q24b2; 
		MEANS Q24b2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24b2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN mentorship program versus no mentorship program (Q24c2) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c2; 
		MODEL Q39 = Q24c2; 
		MEANS Q24c2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24c2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN mentorship program versus no mentorship program (Q24d2) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d2; 
		MODEL Q39 = Q24d2; 
		MEANS Q24d2 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24d2 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed LPN/VN transition to practice program versus no transition to practice program (Q24a3) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24a3; 
		MODEL Q39 = Q24a3; 
		MEANS Q24a3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24a3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Newly-licensed RN transition to practice program versus no transition to practice program (Q24b3) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24b3; 
		MODEL Q39 = Q24b3; 
		MEANS Q24b3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24b3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced LPN/VN transition to practice program versus no transition to practice program (Q24c3) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24c3; 
		MODEL Q39 = Q24c3; 
		MEANS Q24c3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24c3 / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Experienced RN transition to practice program versus no transition to practice program (Q24d3) on likelihood of errors (Q39)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q24d3; 
		MODEL Q39 = Q24d3; 
		MEANS Q24d3 / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q24d3 / ORDER=UNFORMATTED ASCENDING;
RUN;


/********************************************************************************************
*********************************************************************************************
********************************************************************************************/
/*CLINICAL EXPERIENCE*/

/*Is the level of agreement that newly-licensed nurses would be better prepared to provide safe, effective care to 
clients if they had obtained more clinical experience in school (Q18) related to the perception that newly-licensed 
nurses are more likely to make errors versus more experienced nurses (Q39)?*/

PROC REG DATA=work.analyses;
       MODEL Q39 = Q18 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed LPN/VN Grads Preparation to Practice(Q22a)*/

PROC REG DATA=work.analyses;
       MODEL Q22a = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed Diploma Grads Preparation to Practice(Q22b)*/

PROC REG DATA=work.analyses;
       MODEL Q22b = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed AD Grads Preparation to Practice (Q22c)*/

PROC REG DATA=work.analyses;
       MODEL Q22c = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed BSN/BA/BS Grads Preparation to Practice (Q22d)*/

PROC REG DATA=work.analyses;
       MODEL Q22d = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed MSN/Master's Grads Preparation to Practice (Q22e)*/

PROC REG DATA=work.analyses;
       MODEL Q22e = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed PhD/Doctoral Grads Preparation to Practice (Q22f)*/

PROC REG DATA=work.analyses;
       MODEL Q22f = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed LPN/VN Grads Math/Calculation skills (Q23a)*/

PROC REG DATA=work.analyses;
       MODEL Q23a = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed Diploma Grads Math/Calculation skills (Q23b)*/

PROC REG DATA=work.analyses;
       MODEL Q23b = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed AD Grads Math/Calculation skills (Q23c)*/

PROC REG DATA=work.analyses;
       MODEL Q23c = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed BSN/BA/BS Grads Math/Calculation skills (Q23d)*/

PROC REG DATA=work.analyses;
       MODEL Q23d = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed MSN/Master's Grads Math/Calculation skills (Q23e)*/

PROC REG DATA=work.analyses;
       MODEL Q23e = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;

/*Importance of Clinical Experience (Q17)predicting Newly-licensed PhD/Doctoral Grads Math/Calculation skills (Q23f)*/

PROC REG DATA=work.analyses;
       MODEL Q23f = Q17 / SELECTION=NONE STB;
	   *WEIGHT Q15_FILTER; 
run;


