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
	if Q9a=888 then Q9a=.;
run;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities (facility)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES facility / SCORES=TABLE;
	BY Q20a;
RUN;


/*Hire Excelsior grads (yes versus no) (Q20a) on % LPN/VN vacant (Q4c)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q20a; 
		MODEL Q4c = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4c;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on % RN vacant(Q4d)*/

PROC ANOVA DATA=work.analyses; 
		CLASS Q20a; 
		MODEL Q4d = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q4d;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased voluntary overtime(Q5a)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses;
	BY Q20a;
	TABLES Q5a / SCORES=TABLE;	
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased involuntary overtime(Q5b)*/

PROC FREQ DATA=work.analyses;
	BY Q20a;
	TABLES Q5b / SCORES=TABLE;	
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased workloads overtime(Q5c)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5c / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased rates of errors(Q5d)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5d / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on low nursing staff morale (Q5e)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5e / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased use of tem/agency nurses (Q5f)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5f / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on wage increases (Q5g)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5g / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on inability to expand services (Q5h)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5h / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on admissions delayed (Q5i)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5i / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on referrals delayed(Q5j)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5j / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased patient/family complaints(Q5k)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5k / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased absenteeism (Q5L)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5L / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on increased turnover(Q5m)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5m / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on recruiting difficulties (Q5n)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5n / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on decreased quality of care (Q5o)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5o / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on patient transfers(Q5p)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5p / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on other (Q5q)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q5q / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on ease of recruiting newly-licensed RNs to work (Q6a)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q6a = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q6a;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on ease of recruiting experienced RNs to work (Q6b)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q6b = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q6b;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on preference for not hiring newly-licensed nurses (Q9a)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q9a / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of time newly-licensed nurses typically stay employed (Q13)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q13 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q13;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of time experienced nurses typically stay employed (Q14)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q14 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q14;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;




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
	if Q9a=888 then Q9a=.;
run;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions that newly-licensed LPN/VN turnover is a problem (Q15a) (remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered;
		CLASS Q20a; 
		MODEL Q15a = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15a;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions that newly-licensed LPN/VN turnover is a problem (Q15a) (remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered;
		CLASS Q20a; 
		MODEL Q15a = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15a;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions that newly-licensed RN turnover is a problem (Q15b) (remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered;
		CLASS Q20a; 
		MODEL Q15b = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15b;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions that experienced LPN/VN turnover is a problem (Q15c) (remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered;
		CLASS Q20a; 
		MODEL Q15c = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15c;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions that experienced RN turnover is a problem (Q15d) (remember filter)*/

PROC ANOVA DATA=work.analyses_Q15filtered;
		CLASS Q20a; 
		MODEL Q15d = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses_Q15filtered FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q15d;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
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
	if Q9a=888 then Q9a=.;
run;

/*Hire Excelsior grads (yes versus no) (Q20a) on preference for hiring baccalaureate prepared RNs (Q21)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q21 / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed LPN/VNs) being safe (Q22a)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22a = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22a;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed diploma) being safe (Q22b)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22b = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22b;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed AD) being safe (Q22c)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22c = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22c;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed BSN/BA/BS) being safe (Q22d)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22d = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22d;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed MSN/Master's) being safe (Q22e)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22e = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22e;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed PhD/Doctoral) being safe (Q22f)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22f = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22f;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;
 
/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (experienced LPN/VNs) being safe (Q22g)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22g = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22g;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (experienced RNs) being safe (Q22h)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q22h = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q22h;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed LPN/VNs) have satisfactory math/calculation skills (Q23a)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23a = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23a;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed diploma) have satisfactory math/calculation skills (Q23b)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23b = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23b;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed AD) have satisfactory math/calculation skills (Q23c)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23c = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23c;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed BSN/BA/BS) have satisfactory math/calculation skills (Q23d)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23d = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23d;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed MSN/Master's) have satisfactory math/calculation skills (Q23e)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23e = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23e;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (newly-licensed PhD/Doctoral) have satisfactory math/calculation skills (Q23f)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23f = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23f;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (experienced LPN/VNs) have satisfactory math/calculation skills (Q23g)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23g = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23g;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on perceptions of new hires (experienced RNs) have satisfactory math/calculation skills (Q23h)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q23h = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q23h;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no)(Q20a)on length of newly-licensed LPN/VN orientation (Q25a1)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25a1 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25a1;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of newly-licensed RN orientation (Q25b1)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25b1 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25b1;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a)on length of experienced LPN/VN orientation (Q25c1)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25c1 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25c1;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a)on length of experienced RN orientation (Q25d1)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25d1 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25d1;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a)on length of newly-licensed LPN/VN mentorship (Q25a2)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25a2 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25a2;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of newly-licensed RN mentorship (Q25b2)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25b2 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25b2;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;
 
/*Hire Excelsior grads (yes versus no) (Q20a) on length of experienced LPN/VN mentorship (Q25c2)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25c2 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25c2;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of experienced RN mentorship (Q25d2)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25d2 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25d2;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of newly-licensed LPN/VN Transition to Practice Program (Q25a3)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25a3 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25a3;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of newly-licensed RN Transition to Practice Program (Q25b3)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25b3 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25b3;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of experienced LPN/VN Transition to Practice Program (Q25c3)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25c3 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25c3;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on length of experienced RN Transition to Practice Program (Q25d3)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q25d3 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q25d3;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on Providing nurses with ongoing medication safety training and development? (Q31)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q31 / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on Do facilities have any type of patient safety training and development program for nurses? (Q32)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q32 / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on Do facilities use simulation training and development for nurses? (Q33)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q33 / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on agreement that newly-licensed nurses are more likely to make errors versus more experienced nurses (Q39)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q39 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q39;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on number of nurses reported for disciplinary action to the Board of Nursing in the past year (Q40)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q40 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q40;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on amount of hours of overtime facilities allow (Q42)*/

PROC ANOVA DATA=work.analyses;
		CLASS Q20a; 
		MODEL Q42 = Q20a; 
		MEANS Q20a / HOVTEST=LEVENE;
run;

PROC MEANS DATA=work.analyses FW=12 PRINTALLTYPES CHARTYPE MAXDEC=8 ALPHA=0.05 NWAY VARDEF=DF MEAN STD STDERR N NONOBS CLM T PROBT;
		VAR Q42;
		CLASS Q20a / ORDER=UNFORMATTED ASCENDING;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities having a written checklist/protocol for patient handoffs (Q43a)*/

PROC SORT DATA=WORK.ANALYSES;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q43a / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities using a read-back system for verbal orders (Q43b)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q43b / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities using an interdisciplinary care team approach (Q46a)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q46a / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities having computerized order entry (Q46b)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q46b / SCORES=TABLE;
	BY Q20a;
RUN;

/*Hire Excelsior grads (yes versus no) (Q20a) on facilities having electronic medical records (Q46c)*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q46c / SCORES=TABLE;
	BY Q20a;
RUN;

/*xxx*/

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q47a / SCORES=TABLE;
	BY Q20a;
RUN;

PROC FREQ DATA=work.analyses
	ORDER=INTERNAL;
	TABLES Q48a / SCORES=TABLE;
	BY Q20a;
RUN;
