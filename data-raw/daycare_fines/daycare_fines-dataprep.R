# load packages ----------------------------------------------------------------

library(tidyverse)
library(tesseract)

# get data ---------------------------------------------------------------------

eng <- tesseract("eng")
daycare_fines_data_raw <- tesseract::ocr("data-raw/daycare_fines/fine-data-page.pdf", engine = eng)

daycare_fines_data_matrix <- daycare_fines_data_raw %>%
  str_remove("TABLE 1") %>%
  str_remove("\nNUMBER OF LATE-COMING PARENTS PER WEEK ACCORDING TO DAY-CARE CENTERS\n") %>%
  str_replace("No. A\nCENTER OF CHILDREN", "center children") %>%
  str_remove_all("\\#") %>%
  str_remove_all("\\«") %>%
  str_remove_all("\\~") %>%
  str_remove("Test group:") %>%
  str_remove("Control group:") %>%
  str_remove('\nNote.— The columns under ‘‘week’’ report the number of parents who came late.\n') %>%
  str_replace("\\+JI1", "11") %>%
  str_replace_all("\\=", " ") %>%
  str_replace_all("\\) \\(", " ") %>%
  str_replace_all("\n\n", "\n") %>%
  str_replace_all("4([0-9]{2})", " \\1") %>%
  str_replace_all("2([0-9]{2})", " \\1") %>%
  str_replace_all("   ", " ") %>%
  str_replace_all("  ", " ") %>%
  str_remove_all("\\—") %>%
  str_replace("1315", "13 15") %>%
  str_replace("ll", "11") %>%
  str_split("\n") %>%
  unlist() %>%
  str_split(" ") %>%
  unlist() %>%
  matrix(nrow = 11, byrow = TRUE)

daycare_fines_wide <- as_tibble(daycare_fines_data_matrix[-1,], .name_repair = "unique")
names(daycare_fines_wide) =  daycare_fines_data_matrix[1,]

daycare_fines <- daycare_fines_wide %>%
  mutate(
    across(where(is.character), as.integer),
    group = if_else(center <= 6, "test", "control")
    ) %>%
  relocate(center, group) %>%
  pivot_longer(
    cols = -(center:children),
    names_to = "week",
    values_to = "late_pickups"
    ) %>%
  mutate(
    week = as.integer(week),
    study_period_4 = case_when(
      week <= 4              ~ "before fine",
      week >= 5 & week <= 8  ~ "first 4 weeks with fine",
      week >= 9 & week <= 16 ~ "last 8 weeks with fine",
      week >= 17             ~ "after fine"
      ),
    study_period_4 = fct_relevel(study_period_4, "before fine", "first 4 weeks with fine", "last 8 weeks with fine", "after fine"),
    study_period_3 = case_when(
      week <= 4              ~ "before fine",
      week >= 5 & week <= 16 ~ "with fine",
      week >= 17             ~ "after fine"
    ),
    study_period_3 = fct_relevel(study_period_3, "before fine", "with fine", "after fine")
  )

# check against table 2 in paper -- off by rounding only
# call it good enough

daycare_fines %>%
  group_by(center, study_period_4) %>%
  summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
  pivot_wider(names_from = study_period_4, values_from = avg_late_pickups)

daycare_fines %>%
  group_by(center, study_period_3) %>%
  summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
  pivot_wider(names_from = study_period_3, values_from = avg_late_pickups)

# check against figure 1
daycare_fines %>%
  group_by(week, group) %>%
  summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
  ggplot(aes(x = week, y = avg_late_pickups, group = group, color = group)) +
  geom_point() +
  geom_line()

# save --------------------------------------------------------------------------

usethis::use_data(daycare_fines, overwrite = TRUE)
