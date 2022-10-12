# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Purpose of the analysis: We fit a linear model to see which variables (metrics of the car design) were adequate predictors of miles per gallon (fuel efficiency). 

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - According to the results of the linear model in R, when we predict fuel efficiency using all of the metrics as coefficients, only ground clearance and vehicle length are highly significant. The vehicle weight also appears to contribute to fuel efficiency, but not as much as the other two significant results. 
- Is the slope of the linear model considered to be zero? Why or why not?
  - The slope of the linear model for fuel efficiency would not be considered to equal zero because there are two very significant slopes, one for the vehicle length coefficient (Estimate = 6.267) and one for ground clearance (Estimate = 3.546). The slope for the coefficient vehicle weight is estimated to be .001245. 
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - The model may be over-fitted to this particular dataset, because we are using so many coefficients. Models that are over-fitted might be too tailored to the sample data and not generalizable to a broader population. The R-squared value is high (0.7149) in the multiple regression model with all five coefficients. When I created a model with only the two most significant predictors, the R-squared value went down (0.674), but not very much. The second model might be more useful to predict mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

*Overall Summary Table*
![This is an image](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/fa8efe55a2343b4d5fd3b528238d899d42007acb/Resources/OverallTable.png)

*Manufacturing Lot Summary Table*
![This is an image](https://github.com/saramcel/MechaCar_Statistical_Analysis/blob/fa8efe55a2343b4d5fd3b528238d899d42007acb/Resources/LotsTable.png)

## T-Tests on Suspension Coils

then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

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

