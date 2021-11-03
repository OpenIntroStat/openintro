#' Are Emily and Greg More Employable Than Lakisha and Jamal?
#'
#' Original data from the experiment run by Bertrand and Mullainathan (2004).
#' 
#' From the summary: "We study race in the labor market by sending fictitious resumes to help-wanted ads in Boston and Chicago newspapers. To manipulate perceived race, resumes are randomly assigned African-American- or White-sounding names. White names receive 50 percent more callbacks for interviews. Callbacks are also more responsive to resume quality for White names than for African-American ones. The racial gap is uniform across occupation, industry, and employer size. We also find little evidence that employers are inferring social class from the names. Differential treatment by race still appears to be prominent in the U. S. labor market."
#'
#'
#' @name lakisha
#' @docType data
#' @format A tibble with 4870 observations of 63 variables.
#' \describe{                                                          
#'   \item{education}{Highest education, with levels of 0 = not reported; 1 = high school diploma; 2 = high school graduate; 3 = some college; 4 = college or more.}        
#'   \item{n_jobs}{Number of jobs listed on resume.}                             
#'   \item{years_exp}{Number of years of work experience on the resume.}          
#'   \item{honors}{Indicator variable for which 1 = resume mentions some honors.}                               
#'   \item{volunteer}{Indicator variable for which 1 = resume mentions some volunteering experience.}           
#'   \item{military}{Indicator variable for which 1 = resume mentions some military experience.}                  
#'   \item{emp_holes}{Indicator variable for which 1 = resume mentions some employment holes.}                        
#'   \item{occup_specific}{1990 Census Occupation Code. See sources for a key.}                                      
#'   \item{occup_broad}{Occupation broad with levels 1 = executives and managerial occupations, 2 = administrative supervisors, 3 = sales representatives, 4 = sales workers, 5 = secretaries and legal assistants, 6 = clerical occupations}                                            
#'   \item{work_in_school}{Indicator variable for which 1 = resume mentions some work experience while at school}
#'   \item{email}{Indicator variable for which 1 = email address on applicant's resume.}                        
#'   \item{computer_skills}{Indicator variable for which 1 = resume mentions some computer skills.}              
#'   \item{special_skills}{Indicator variable for which 1 = resume mentions some special skills.}                
#'   \item{first_name}{Applicant's first name.}                                   
#'   \item{sex}{Sex, with levels of 'f' = female; 'm' = male.}                                                             
#'   \item{race}{Race, with levels of 'b' = black; 'w' = white.}                                                            
#'   \item{h}{Indicator variable for which 1 = high quality resume.}                                            
#'   \item{l}{Indicator variable for which 1 = low quality resume.}                                             
#'   \item{call}{Indicator variable for which 1 = applicant was called back.}                                   
#'   \item{city}{City, with levels of 'c' = chicago; 'b' = boston.}                                           
#'   \item{kind}{Kind, with levels of 'a' = administrative; 's' = sales.}                                                            
#'   \item{ad_id}{Employment ad identifier.}                                      
#'   \item{frac_black}{Fraction of blacks in applicant's zip.}                           
#'   \item{frac_white}{Fraction of whites in applicant's zip.}                           
#'   \item{l_med_hh_inc}{Log median household income in applicant's zip.}                  
#'   \item{frac_dropout}{Fraction of high-school dropouts in applicant's zip.}                    
#'   \item{frac_colp}{Fraction of college degree or more in applicant's zip}
#'   \item{l_inc}{Log per capita income in applicant's zip.}                      
#'   \item{col}{Indicator variable for which 1 = applicant has college degree or more.}                           
#'   \item{expminreq}{Minimum experience required, if any (in years when numeric).}                          
#'   \item{school_req}{Specific education requirement, if any. 'hsg' = high school graduate, 'somcol' = some college, 'colp' = four year degree or higher}                   
#'   \item{eoe}{Indicator variable for which 1 = ad mentions employer is 'Equal Opportunity Employer'.} 
#'   \item{parent_sales}{Sales of parent company (in millions of US $).}                               
#'   \item{parent_emp}{Number of parent company employees.}                            
#'   \item{branch_sales}{Sales of branch (in millions of US $).}                                       
#'   \item{branch_emp}{Number of branch employees.}                                           
#'   \item{fed}{Indicator variable for which 1 = employer is a federal contractor.}                                 
#'   \item{frac_black_emp_zip}{Fraction of blacks in employers's zipcode.}            
#'   \item{frac_white_emp_zip}{Fraction of whites in employer's zipcode.}             
#'   \item{l_med_hh_inc_emp_zip}{Log median household income in employer's zipcode.}        
#'   \item{frac_dropout_emp_zip}{Fraction of high-school dropouts in employer's zipcode.}      
#'   \item{frac_colp_emp_zip}{Fraction of college degree or more in employer's  zipcode.}    
#'   \item{l_inc_emp_zip}{Log per capita income in employer's zipcode.}            
#'   \item{manager}{Indicator variable for which 1 = executives or managers wanted.}                                             
#'   \item{supervisor}{Indicator variable for which 1 = administrative supervisors wanted.}                                       
#'   \item{secretary}{Indicator variable for which 1 = secretaries or legal assistants wanted.}                                         
#'   \item{off_support}{Indicator variable for which 1 = clerical workers wanted.}                                                      
#'   \item{sales_rep}{Indicator variable for which 1 = sales representative wanted.}                               
#'   \item{retail_sales}{Indicator variable for which 1 = retail sales worker wanted.}                             
#'   \item{req}{Indicator variable for which 1 = ad mentions any requirement for job.}                          
#'   \item{exp_req}{Indicator variable for which 1 = ad mentions some experience requirement.}                   
#'   \item{com_req}{Indicator variable for which 1 = ad mentions some communication skills requirement.}         
#'   \item{educ_req}{Indicator variable for which 1 = ad mentions some educational requirement.}                 
#'   \item{comp_req}{Indicator variable for which 1 = ad mentions some computer skill requirement.}              
#'   \item{org_req}{Indicator variable for which 1 = ad mentions some organizational skills requirement.}        
#'   \item{manuf}{Indicator variable for which 1 = employer industry is manufacturing.}                           
#'   \item{trans_com}{Indicator variable for which 1 = employer industry is transport or communication.}              
#'   \item{bank_real}{Indicator variable for which 1 = employer industry is finance, insurance or real estate.}      
#'   \item{trade}{Indicator variable for which 1 = employer industry is wholesale or retail trade.}               
#'   \item{bus_service}{Indicator variable for which 1 = employer industry is business or personal  services.}    
#'   \item{oth_service}{Indicator variable for which 1 = employer industry is health, education or social  services.} 
#'   \item{miss_ind}{Indicator variable for which 1 = employer industry is other or unknown.}                         
#'   \item{ownership}{Ownership status of employer, with levels of 'non-profit'; 'private'; 'public'}  
#'   }
#' @source Bertrand, Marianne, and Mullainathan, Sendhil. Replication data for: Are Emily and Greg More Employable Than Lakisha and Jamal? A Field Experiment on Labor Market Discrimination. Nashville, TN: American Economic Association \[publisher\], 2004. Ann Arbor, MI: Inter-university Consortium for Political and Social Research \[distributor\], 2019-12-06. \url{https://doi.org/10.3886/E116023V1}.
#' 
#' [NBER Working Papers](https://www.nber.org/system/files/working_papers/w9873/w9873.pdf)
#' 
#' [1990 Census Occupation Codes](https://usa.ipums.org/usa/volii/occ1990.shtml)
#' 
#' Note: The description of the variables follows closely the labels provided in the original dataset, with small edits for clarity. 
#' @keywords datasets
#' @examples
#' library(dplyr)
#' 
#' # Percent callback for typical White names and typical African-American names (table 1, p. 997)
#' 
#' lakisha %>% 
#'   group_by(race) %>% 
#'   summarise(call_back = mean(call))

"lakisha"
