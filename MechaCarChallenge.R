install.packages("tidyverse")
install.packages("jsonlite")

#----------------------MPG Regression--------------------------------
## Import dataset
mpg_data <- read.csv('MechaCar_mpg.csv')

## Generate multiple linear regression model
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mpg_data)
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mpg_data))

#----------------------Suspension Coil Summary--------------------------------
## Import dataset
suspension_data <- read.csv('Suspension_Coil.csv')

summary(suspension_data)

sus_summary <-
  list("PSI" =
         list("Mean" = 1499,
              "Median" = 1500,
              "Variance" = var(suspension_data$PSI),
              "Standard Deviation" = sd(suspension_data$PSI))
       )
t.test(log10(suspension_data$PSI),mu=1499)
