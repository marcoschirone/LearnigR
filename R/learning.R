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
