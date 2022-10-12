# DELIVERABLE 1

library(dplyr)
# all coefficients included in the following linear model
mecha_car <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)
model1 <-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model
summary(model1) #summarize linear model
# only the significant results from the first model are included as coefficients here
model2 <- lm(mpg ~ vehicle_length + ground_clearance,data=mecha_car) #generate multiple linear regression model
summary(model2) #summarize linear model
# create scatterplots
pairs(mecha_car) #this makes scatter plots, but they don't look good
#install and load the GGally library (suggested here: https://www.statology.org/multiple-linear-regression-r/#:~:text=The%20basic%20syntax%20to%20fit%20a%20multiple%20linear,can%20fit%20the%20model%20using%20the%20following%20code%3A)
install.packages("GGally")
library(GGally)
#generate the pairs plot
ggpairs(mecha_car)

#DELIVERABLE 2

coils <- read.csv(file="Suspension_Coil.csv",check.names=F, stringsAsFactors=F)
total_summary<-data.frame(coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)))
print(total_summary)
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
#Boxplots
plt <- ggplot(coils,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt + geom_boxplot() + #add boxplot
  theme(axis.text.x=element_text(angle=45,hjust=1)) + #rotate x-axis labels 45 degrees
  geom_point() #overlay scatter plot on top


# DELIVERABLE 3

#overall t-test
t.test(coils$PSI,mu=1500) #compare sample versus population means
#lot by lot t-tests
t.test(subset(coils,Manufacturing_Lot=="Lot1",PSI),mu=1500)
t.test(subset(coils,Manufacturing_Lot=="Lot2",PSI),mu=1500) 
t.test(subset(coils,Manufacturing_Lot=="Lot3",PSI),mu=1500) 