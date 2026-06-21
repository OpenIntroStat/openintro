PrimaryDataAkutDB.rda readMe

Data from the Acute Admission Database. Described in details in: 

Barfod et al.: The formation and design of the ‘Acute
Admission Database’- a database including a prospective, observational
cohort of 6279 patients triaged in the Emergency Department in a larger
Danish hospital. Scandinavian Journal of Trauma, Resuscitation and Emergency
Medicine 2012 20:29

For simplicity this data set comprises only variables relevant for the article: 

Kristensen et. al.: Routine blood tests are associated with short term mortality 
and can improve emergency department triage: a cohort study of >12,000 patients. 
Scandinavian Journal of Trauma, Resuscitation and Emergency
Medicine



NB. The data has been anonymised. No time of admission, personal ID numbers or birthdays. Age has been rounded to lowest nearest integer. 


To open in R:
load("~/PrimaryDataAkutDB.rda")
mydata <- data



Data Variables:
"triage": Triage given upon arrival to ED. Class=factor. Green, yellow, orange, red.
"age": Age, rounded to lower integer. Class=numeric
"sex": Class=factor. female/male
"crp": S-C-reactive protein. Unit: nmol/l
"k": S-Pottasium. Unit: mmol/L
"na": S-Sodium. Unit: mmol/L
"hb": S-haemoglobine. Unit: mmol/L
"crea": S-creatinine. Unit: umol/L
"leu": Blood leucocyte count. Unit: 10E9/L
"alb": S-albumine. Unit: g/L
"ldh": S-Lactate dehydrogenasis. Unit: U/L
"mort30": 30-day survival. Class=factor: 0=Survived >30 days. 1= dead within 30 days.
"icutime": Number of days on Intensive Care Unit. 99999=not admitted to ICU
"icustatus": Class=factor. admitted to ICU yes/no. 0=no, 1=yes
"inddage": Number of days admitted to hospital
"genindl.1": Class=factor. Readmitted within 30 days yes/no. 1=yes, 0=no            
"saturation": Peripheral arterial oxygen saturation. Unit: %.           
"respirationsfrekvens": Respiratory rate. Unit: /min
"puls": Heart rate. Unit: /min                 
"systoliskblodtryk": Systolic blood pressure. Unit: mmHg    
"gcs": Glascow coma score.                  
