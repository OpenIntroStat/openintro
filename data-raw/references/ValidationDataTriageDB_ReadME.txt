ValidationDataTriageDB.rda readMe

Data from the TRIAGE study. Described in details in: 

Plesner et al. The formation and design of the TRIAGE
study - baseline data on 6005 consecutive patients admitted 
to hospital from the emergency department
Scandinavian Journal of Trauma, Resuscitation and Emergency Medicine  
(2015) 23:106 DOI 10.1186/s13049-015-0184-1

For simplicity this data set comprises only variables relevant for the article: 

Kristensen et. al.: Routine blood tests are associated with short term mortality 
and can improve emergency department triage: a cohort study of >12,000 patients. 
Scandinavian Journal of Trauma, Resuscitation and Emergency
Medicine



NB. The data has been anonymised. No time of admission, personal ID numbers or birthdays. Age has been rounded to lowest nearest integer. 


To open in R:
load("~/ValidationDataTriageDB.rda")
mydata <- data



Data Variables:
"triage": Triage given upon arrival to ED. Class=factor. Blue, Green, yellow, orange, red.
"age": Age, rounded to lower integer. Class=numeric
"sex": 1=Male, 0=Female
"crp": S-C-reactive protein. Unit: nmol/l
"k": S-Pottasium. Unit: mmol/L
"natr": S-Sodium. Unit: mmol/L
"hb": S-haemoglobine. Unit: mmol/L
"crea": S-creatinine. Unit: umol/L
"leu": Blood leucocyte count. Unit: 10E9/L
"alb": S-albumine. Unit: g/L
"ldh": S-Lactate dehydrogenasis. Unit: U/L
"mort30": 30-day survival. Class=factor: 0=Survived >30 days. 1= dead within 30 days.
"LOS": Length of stay. Number of days admitted to hospital
"ev_intensiv": Admitted to intensive care unit under relevant admission.
"sat": Peripheral arterial oxygen saturation. Unit: %.           
"rf": Respiratory rate. Unit: /min
"puls": Heart rate. Unit: /min                 
"bts": Systolic blood pressure. Unit: mmHg    
