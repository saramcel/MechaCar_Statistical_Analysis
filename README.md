# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Purpose of the analysis: To fit a linear model to see which variables (metrics of the car design) were adequate predictors of miles per gallon (fuel efficiency). 

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - According to the results of the linear model in R, when we predict fuel efficiency using all of the metrics as coefficients, only ground clearance and vehicle length are highly significant. The vehicle weight also appears to contribute to fuel efficiency, but not as much as the other two significant results. 

**Results of Linear Model with Five Predictors**

![image](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/a7cfe8de3aa9bd25b3f2eca026c5af5a9cbf26ac/Resources/LinearModelResults.png)

- Is the slope of the linear model considered to be zero? Why or why not?
  - The slope of the linear model for fuel efficiency would not be considered to equal zero because there are two very significant slopes, one for the vehicle length coefficient (Estimate = 6.267) and one for ground clearance (Estimate = 3.546). The slope for the coefficient vehicle weight is estimated to be .001245. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - The model may be over-fitted to this particular dataset because we are using so many coefficients. Models that are over-fitted might be too tailored to the sample data and not generalizable to a broader population. The R-squared value is high (0.7149) in the multiple regression model with all five coefficients. When I created a model with only the two most significant predictors, the R-squared value went down (0.674), but not very much. The second model might be more useful to predict mpg of MechaCar prototypes. 

**Results of Linear Model with Two Predictors**

![image2](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/a7cfe8de3aa9bd25b3f2eca026c5af5a9cbf26ac/Resources/LinearModelResults2.png)

One additional issue is that the vehicle length and ground clearance might not be independent of one another. This is suggested by the scatterplot below, which shows a significant correlation between these two predictors, which introduces the issue of multicollinearity to our models which include both variables. 

**Scatterplots**

![scatterplots](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/eba51fd79f25c7af9a7df1f1d9d1e4f7be66ffd0/Resources/ggallyscatterplot.png)

## Summary Statistics on Suspension Coils

Purpose of the analysis: To summarize the data on suspension coils overall and from differen tmanufacturing lots so that we can determine whether they meet technical specifications.

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - The overall summary table suggests that the specification is met because the variance is less than 100 (variance = 62.29). In the lot by lot summary table, manufacturing lot 1 and 2 appear to meet the specifications because each of their variances are much lower than 100. However, the lot analysis suggests that something is happening with Maufacturing Lot 3, as it has a variance of 170.29, which is quite high. We can see in the box plot that the data has a relatively wide range with a few potential outliers. 
  
**Overall Summary Table**

![This is an image](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/fa8efe55a2343b4d5fd3b528238d899d42007acb/Resources/OverallTable.png)

**Manufacturing Lot Summary Table**

![This is an image](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/fa8efe55a2343b4d5fd3b528238d899d42007acb/Resources/LotsTable.png)

**Box Plots**

![boxplots](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/eba51fd79f25c7af9a7df1f1d9d1e4f7be66ffd0/Resources/boxplots.png)

## T-Tests on Suspension Coils

Purpose of the analysis: To use statistical testing (Student's t-tests) to determine if the PSI across all manufacturing lots is significantly different from the population mean of 1,500 pounds per square inch. 

- The null hypothesis is that there is no difference between the means we have and the population mean of 1,500 PSI. 
- The alternative hypothesis is that there is a difference between the sample means and the population mean.

**Overall T-Test**

![overall t-test](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/eba51fd79f25c7af9a7df1f1d9d1e4f7be66ffd0/Resources/overallttest.png)

There is not sufficient evidence to reject the null hypothesis (p = 0.06) if the alpha level is set at 0.05. However, if we would like to narrow the number of acceptable values for PSI, we could set the alpha level to 0.1, which would mean that we would be able to reject the null hypothesis in this case. 

**Lot 1 and Lot 2 T-Tests**

![lot1 and lot2](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/eba51fd79f25c7af9a7df1f1d9d1e4f7be66ffd0/Resources/lot1lot2ttest.png)

Neither Lot 1 nor Lot 2 are significantly different from the population mean PSI of 1,500. The p-values are high, and the confidence intervals are narrow. 

**Lot 3 T-Test**

![lot3 t-test](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/eba51fd79f25c7af9a7df1f1d9d1e4f7be66ffd0/Resources/lot3ttest.png)

Lot 3 average PSI could be considered significantly different from the population mean PSI of 1,500. The t-test has a low p-value (p = 0.04) that is signifcant at an alpha level of 0.05. As discussed earlier, the alpha level could be set to a larger number (e.g. 0.1) because the purpose of our analysis is quality control. The confidence interval for Lot 3 is much wider than the confidence intervals for Lot 1 or Lot 2. 

## Study Design: MechaCar vs Competition.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

You will earn a perfect score for Deliverable 4 by completing all requirements below:
The statistical study design has the following:
A metric to be tested is mentioned (5 pt)
A null hypothesis or an alternative hypothesis is described (5 pt)
A statistical test is described to test the hypothesis (5 pt)
The data for the statistical test is described (5 pt)

