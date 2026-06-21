# A dataset containing the school-level percentage of students scoring proficient or advanced in the 2018 Grade 10 Mathematics test in the Massachusetts Comprehensive Assessment System, along with characteristics of the school.

The Massachusetts Comprehensive Assessment System (MCAS,
<https://www.doe.mass.edu/mcas/>) uses state-wide testing to assess
whether school districts, schools, and students are meeting
expectations. This dataset records the percentage of students scoring
proficient or advanced in the 2018 Mathematics test. School-level
variables include possible predictors of test performance such as the
demographics of the student population and administrative features of
the school.

## Usage

``` r
mcas
```

## Format

A data frame with 356 rows and 21 columns.

- `PA_perc`:

  Numeric, percentage of students scoring proficient or advanced.

- `average_class_size`:

  Numeric, average class size in the school, regardless of subject.

- `average_math_class_size`:

  Numeric, average size of math classes in the school.

- `student_teacher_ratio`:

  Numeric, average student-teacher ratio in the school.

- `attendance_rate`:

  Numeric, the number of full-time equivalent student-days attended by
  full-time students in grades 1-10 as a percentage of the total number
  of possible student-days during the period.

- `number_of_students`:

  Numeric, the total number of students including special education
  beyond grade 12.

- `largest_minority`:

  Character, largest minority group.

- `school_name`:

  Character, school name.

- `district_name`:

  Character, Massachusetts school district.

- `english_learner`:

  Numeric, percentage of students for whom the first language is other
  than English and who cannot perform ordinary classroom work in
  English.

- `students_disabilities`:

  Numeric, percentage of students in the school with an individual
  education plan (IEP) identifying special learning needs

- `econ_dis`:

  Numeric, percentage of students from economically disadvantaged
  background. Determined based on student participation in one or more
  of the following state-administered programs: the Supplemental
  Nutrition Assistance Program (SNAP); the Transitional Assistance for
  Families with Dependent Children (TAFDC); the Department of Children
  and Families' (DCF) foster care program; and Medicaid.

- `african_american`:

  Numeric, percentage of students in the school having origins in any of
  the black racial groups of Africa.

- `asian`:

  Numeric, percentage of students having origins in any of the original
  peoples of the Far East, Southeast Asia, or the Indian subcontinent.

- `white`:

  Numeric, percentage of students having origins in any of the original
  peoples of Europe, the Middle East, or North Africa.

- `hispanic`:

  Numeric, percentage of students of Cuban, Mexican, Puerto Rican, South
  or Central American descent, or other Spanish culture or origin,
  regardless of race.

- `native_american`:

  Numeric, percentage of students having origins in any of the original
  peoples of North and South America (including Central America), and
  who maintain tribal affiliation or community attachment.

- `native_hawaiian_pacific_islander`:

  Numeric, percentage of students having origins in any of the original
  peoples of Hawaii, Guam, Samoa, or other Pacific Islands.

- `multi_race_non_hispanic`:

  Numeric, percentage of students selecting more than one racial
  category and non-Hispanic.

- `exp_per_pupil`:

  Numeric, amount spent by the school district per pupil, in dollars.
  Calculated by dividing a district's operating expenditures by its
  average pupil membership.

- `majority`:

  Character, coded `white` if \\\ge\\ 50% of the students in the school
  are in racial category white, otherwise coded `minority`

## Source

<https://profiles.doe.mass.edu/statereport/>
