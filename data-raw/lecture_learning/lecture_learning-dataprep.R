# packages used

library(haven) # this package has read_spss for loading in SPSS file
library(dplyr)
library(tidyr)


# get initial data

raw_data <- read_spss(here::here("data-raw/lecture_learning/memory.sav"))

# remove all attributes imported from spss using zap_ functions

raw_data <- raw_data %>%
  zap_label() %>%
  zap_labels() %>%
  zap_formats() %>%
  zap_widths()


# change column names from original to more meaningful and standardized names

colnames(raw_data) <- c("Student", "Gender", "Age", "MWlive", "MWvideo", 
                       "MEMlive", "MEMvideo", "INTlive", "INTvideo", "MOTlive", 
                       "MOTvideo", "MOTcompare")

# create tidy datasets out of the raw_data data by making type of instruction
# its own Method column and creates response values column; must do this 
# for each of the four measurements: mindwandering, memory, interest, 
# and motivation 

MW <- raw_data %>%
  select(Student, Gender, MWlive, MWvideo) %>%
  rename(Live = MWlive) %>%
  rename(Video = MWvideo) %>%
  pivot_longer(cols = c(Live, Video), names_to = "Method", values_to = "Mindwander")

MEM <- raw_data %>%
  select(Student, MEMlive, MEMvideo) %>%
  rename(Live = MEMlive) %>%
  rename(Video = MEMvideo) %>%
  pivot_longer(cols = c(Live, Video), names_to = "Method", values_to = "Memory")

INT <- raw_data %>%
  select(Student, INTlive, INTvideo) %>%
  rename(Live = INTlive) %>%
  rename(Video = INTvideo) %>%
  pivot_longer(cols = c(Live, Video), names_to = "Method", values_to = "Interest")
  
MOT <- raw_data %>%
  select(Student, MOTlive, MOTvideo, MOTcompare) %>%
  rename(Live = MOTlive) %>%
  rename(Video = MOTvideo) %>%
  rename(Motivation_both = MOTcompare) %>%
  pivot_longer(cols = c(Live, Video), names_to = "Method", values_to = "Motivation_single")
  
# make one big tidy dataset called lecture_learning by joining together in

lecture_learning <- MW %>%
  full_join(MEM) %>%
  full_join(INT) %>%
  full_join(MOT)

# change coded values in lecture_learning

lecture_learning <- lecture_learning %>% 
  mutate(Gender = ifelse(Gender == "0", "Male", "Female"))

lecture_learning <- lecture_learning %>% 
  mutate(Interest = case_when(
    Interest == 1 ~ "least interest",
    Interest == 2 ~ "little interest",
    Interest == 3 ~ "neutral",
    Interest == 4 ~ "more interest",
    Interest == 5 ~ "greatest interest")
  )

lecture_learning <- lecture_learning %>%
  mutate(Motivation_single = case_when(
    Motivation_single == 1 ~ "very unmotivated",
    Motivation_single == 2 ~ "somewhat unmotivated",
    Motivation_single == 3 ~ "neutral",
    Motivation_single == 4 ~ "somewhat motivated",
    Motivation_single == 5 ~ "very motivated")
  )

lecture_learning <- lecture_learning %>%
  mutate(Motivation_both = case_when(
    Motivation_both == 1 ~ "Video",
    Motivation_both == 2 ~ "Live",
    Motivation_both == 3 ~ "Equally Motivated")
 ) %>% 
  janitor::clean_names()
    
# save

usethis::use_data(lecture_learning, overwrite = TRUE)
