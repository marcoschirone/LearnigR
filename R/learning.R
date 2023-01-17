# R basics ----------------------------------------------------------------


weight_kilos <- 10

weight_kilos


library(tidyverse)

# Packages ----------------------------------------------------------------


r3::check_git_config()



# Git ---------------------------------------------------------------------


library(tidyverse)
library(NHANES)

# Looking at data ---------------------------------------------------------

glimpse(NHANES)

select(NHANES, Age, Weight, BMI, Marijuana)

select(NHANES, -HeadCirc)

select(NHANES, starts_with("BP"))

select(NHANES, ends_with("Day"))

select(NHANES, contains("Age"))

nhanes_small <- select(
  NHANES,
  Age,
  Gender,
  BMI,
  Diabetes,
  PhysActive,
  BPSysAve,
  BPDiaAve,
  Education
)

# Save the selected columns as a new data frame
# Recall the style guide for naming objects


# View the new data frame
nhanes_small
# Fixing variable names ---------------------------------------------------

nhanes_small <- rename_with(
  nhanes_small,
  snakecase::to_snake_case
)


nhanes_small <- rename(
  nhanes_small,
  sex = gender
)


# Piping ------------------------------------------------------------------

colnames(nhanes_small)

nhanes_small %>%
  colnames()
nhanes_small %>%
  select(phys_active) %>%
  rename(pysically_active = phys_active)
