getwd()


#change this setwd as well


# Delete the line of code above after you run it

library(dplyr)
library(ggplot2)
library(tidyverse)
library(ggfortify)
library(readxl)


data <- read_excel("C_data.xlsx", sheet = "All Combined")
head(data)
str(data)

# nested ANOVAs
nest <- aov(Height_Peak ~ Population + Genotype_Peak, data = data)
summary(nest)

nest <- aov(Height_PostPeak ~ Population + Genotype_PostPeak, data = C_data)

nest <- aov(Height_Peak ~ Population + Genotype_Peak + Plot.number...1, data = data)

nest <- aov (Height_PostPeak ~ Population + Genotype_PostPeak + Plot.number...1, data = data)

nested_aov <- aov (Height_Peak ~Population /Genotype_Peak +Population +Plot.number...1, data = C_data)
aov (Height_Peak ~Population /Genotype_Peak +Population +Plot.number...1, data = C_data)

Lvs.Dam_Peak <- aov (Fraction.Lvs.Dam_Peak ~ Population+Genotype_Peak +Plot.number...1, data=C_data)
