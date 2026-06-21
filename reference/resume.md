# Which resume attributes drive job callbacks?

This experiment data comes from a study that sought to understand the
influence of race and gender on job application callback rates. The
study monitored job postings in Boston and Chicago for several months
during 2001 and 2002 and used this to build up a set of test cases. Over
this time period, the researchers randomly generating resumes to go out
to a job posting, such as years of experience and education details, to
create a realistic-looking resume. They then randomly assigned a name to
the resume that would communicate the applicant's gender and race. The
first names chosen for the study were selected so that the names would
predominantly be recognized as belonging to black or white individuals.
For example, Lakisha was a name that their survey indicated would be
interpreted as a black woman, while Greg was a name that would generally
be interpreted to be associated with a white male.

## Usage

``` r
resume
```

## Format

A data frame with 4870 observations, representing 4870 resumes, over 30
different variables that describe the job details, the outcome
(`received_callback`), and attributes of the resume.

- job_ad_id:

  Unique ID associated with the advertisement.

- job_city:

  City where the job was located.

- job_industry:

  Industry of the job.

- job_type:

  Type of role.

- job_fed_contractor:

  Indicator for if the employer is a federal contractor.

- job_equal_opp_employer:

  Indicator for if the employer is an Equal Opportunity Employer.

- job_ownership:

  The type of company, e.g. a nonprofit or a private company.

- job_req_any:

  Indicator for if any job requirements are listed. If so, the other
  `job_req_*` fields give more detail.

- job_req_communication:

  Indicator for if communication skills are required.

- job_req_education:

  Indicator for if some level of education is required.

- job_req_min_experience:

  Amount of experience required.

- job_req_computer:

  Indicator for if computer skills are required.

- job_req_organization:

  Indicator for if organization skills are required.

- job_req_school:

  Level of education required.

- received_callback:

  Indicator for if there was a callback from the job posting for the
  person listed on this resume.

- firstname:

  The first name used on the resume.

- race:

  Inferred race associated with the first name on the resume.

- gender:

  Inferred gender associated with the first name on the resume.

- years_college:

  Years of college education listed on the resume.

- college_degree:

  Indicator for if the resume listed a college degree.

- honors:

  Indicator for if the resume listed that the candidate has been awarded
  some honors.

- worked_during_school:

  Indicator for if the resume listed working while in school.

- years_experience:

  Years of experience listed on the resume.

- computer_skills:

  Indicator for if computer skills were listed on the resume. These
  skills were adapted for listings, though the skills were assigned
  independently of other details on the resume.

- special_skills:

  Indicator for if any special skills were listed on the resume.

- volunteer:

  Indicator for if volunteering was listed on the resume.

- military:

  Indicator for if military experience was listed on the resume.

- employment_holes:

  Indicator for if there were holes in the person's employment history.

- has_email_address:

  Indicator for if the resume lists an email address.

- resume_quality:

  Each resume was generally classified as either lower or higher
  quality.

## Source

Bertrand M, Mullainathan S. 2004. "Are Emily and Greg More Employable
than Lakisha and Jamal? A Field Experiment on Labor Market
Discrimination". The American Economic Review 94:4 (991-1013).
[doi:10.3386/w9873](https://doi.org/10.3386/w9873) .

## Details

Because this is an experiment, where the race and gender attributes are
being randomly assigned to the resumes, we can conclude that any
statistically significant difference in callback rates is causally
linked to these attributes.

Do you think it's reasonable to make a causal conclusion? You may have
some health skepticism. However, do take care to appreciate that this
was an experiment: the first name (and so the inferred race and gender)
were randomly assigned to the resumes, and the quality and attributes of
a resume were assigned independent of the race and gender. This means
that any effects we observe are in fact causal, and the effects related
to race are both statistically significant and very large: white
applicants had about a 50\\

Do you still have doubts lingering in the back of your mind about the
validity of this study? Maybe a counterargument about why the standard
conclusions from this study may not apply? The article summarizing the
results was exceptionally well-written, and it addresses many potential
concerns about the study's approach. So if you're feeling skeptical
about the conclusions, please find the link below and explore!

## See also

`resume`

## Examples

``` r

head(resume, 5)
#> # A tibble: 5 × 30
#>   job_ad_id job_city job_industry  job_type   job_fed_contractor
#>       <dbl> <chr>    <chr>         <chr>                   <dbl>
#> 1       384 Chicago  manufacturing supervisor                 NA
#> 2       384 Chicago  manufacturing supervisor                 NA
#> 3       384 Chicago  manufacturing supervisor                 NA
#> 4       384 Chicago  manufacturing supervisor                 NA
#> 5       385 Chicago  other_service secretary                   0
#> # ℹ 25 more variables: job_equal_opp_employer <dbl>, job_ownership <chr>,
#> #   job_req_any <dbl>, job_req_communication <dbl>, job_req_education <dbl>,
#> #   job_req_min_experience <chr>, job_req_computer <dbl>,
#> #   job_req_organization <dbl>, job_req_school <chr>, received_callback <dbl>,
#> #   firstname <chr>, race <chr>, gender <chr>, years_college <int>,
#> #   college_degree <dbl>, honors <int>, worked_during_school <int>,
#> #   years_experience <int>, computer_skills <int>, special_skills <int>, …

# Some checks to confirm balance between race and
# other attributes of a resume. There should be
# some minor differences due to randomness, but
# each variable should be (and is) generally
# well-balanced.
table(resume$race, resume$years_college)
#>        
#>            0    1    2    3    4
#>   black   28   22  132  493 1760
#>   white   18   18  142  513 1744
table(resume$race, resume$college_degree)
#>        
#>            0    1
#>   black  675 1760
#>   white  691 1744
table(resume$race, resume$honors)
#>        
#>            0    1
#>   black 2310  125
#>   white 2303  132
table(resume$race, resume$worked_during_school)
#>        
#>            0    1
#>   black 1069 1366
#>   white 1076 1359
table(resume$race, resume$years_experience)
#>        
#>           1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
#>   black  19 177  95 259 264 409 274 288  78  72  86  33  80  78  21  43   2  36
#>   white  26 175  99 278 243 408 267 290  81  58  87  36  74  71  13  51   1  41
#>        
#>          19  20  21  22  23  25  26  44
#>   black  24  11  21   4   4   3  53   1
#>   white  22  24  26   4   5   4  51   0
table(resume$race, resume$computer_skills)
#>        
#>            0    1
#>   black  408 2027
#>   white  466 1969
table(resume$race, resume$special_skills)
#>        
#>            0    1
#>   black 1638  797
#>   white 1631  804
table(resume$race, resume$volunteer)
#>        
#>            0    1
#>   black 1426 1009
#>   white 1440  995
table(resume$race, resume$military)
#>        
#>            0    1
#>   black 2187  248
#>   white 2210  225
table(resume$race, resume$employment_holes)
#>        
#>            0    1
#>   black 1349 1086
#>   white 1339 1096
table(resume$race, resume$has_email_address)
#>        
#>            0    1
#>   black 1267 1168
#>   white 1269 1166
table(resume$race, resume$resume_quality)
#>        
#>         high  low
#>   black 1223 1212
#>   white 1223 1212

# Regarding the callback outcome for race,
# we observe a very large difference.
tapply(
  resume$received_callback,
  resume[c("race", "gender")],
  mean
)
#>        gender
#> race             f          m
#>   black 0.06627784 0.05828780
#>   white 0.09892473 0.08869565

# Natural question: is this statisticaly significant?
# A proper analysis would take into account the
# paired nature of the data. For each ad, let's
# compute the following statistic:
#     <callback rate for white candidates>
#     - <callback rate for black candidates>
# First contruct the callbacks for white and
# black candidates by ad ID:
table(resume$race)
#> 
#> black white 
#>  2435  2435 
cb_white <- with(
  subset(resume, race == "white"),
  tapply(received_callback, job_ad_id, mean)
)
cb_black <- with(
  subset(resume, race == "black"),
  tapply(received_callback, job_ad_id, mean)
)
# Next, compute the differences, where the
# names(cb_white) part ensures we matched up the
# job ad IDs.
diff <- cb_white - cb_black[names(cb_white)]
# Finally, we can apply a t-test on the differences:
t.test(diff)
#> 
#>  One Sample t-test
#> 
#> data:  diff
#> t = 5.1896, df = 1322, p-value = 0.0000002437
#> alternative hypothesis: true mean is not equal to 0
#> 95 percent confidence interval:
#>  0.02021562 0.04478816
#> sample estimates:
#>  mean of x 
#> 0.03250189 
#> 
# There is very strong evidence of an effect.

# Here's a similar check with gender. There are
# more female-inferred candidates used on the resumes.
table(resume$gender)
#> 
#>    f    m 
#> 3746 1124 
cb_male <- with(
  subset(resume, gender == "m"),
  tapply(received_callback, job_ad_id, mean)
)
cb_female <- with(
  subset(resume, gender == "f"),
  tapply(received_callback, job_ad_id, mean)
)
diff <- cb_female - cb_male[names(cb_female)]
# The `na.rm = TRUE` part ensures we limit to jobs
# where both a male and female resume were sent.
t.test(diff, na.rm = TRUE)
#> 
#>  One Sample t-test
#> 
#> data:  diff
#> t = 0.80699, df = 465, p-value = 0.4201
#> alternative hypothesis: true mean is not equal to 0
#> 95 percent confidence interval:
#>  -0.01283147  0.03071416
#> sample estimates:
#>   mean of x 
#> 0.008941345 
#> 
# There is no statistically significant difference.

# Was that the best analysis? Absolutely not!
# However, the analysis was unbiased. To get more
# precision on the estimates, we could build a
# multivariate model that includes many characteristics
# of the resumes sent, e.g. years of experience.
# Since those other characteristics were assigned
# independently of the race characteristics, this
# means the race finding will almost certainy will
# hold. However, it is possible that we'll find
# more interesting results with the gender investigation.
```
