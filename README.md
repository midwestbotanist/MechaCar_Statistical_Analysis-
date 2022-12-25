# MechaCar_Statistical_Analysis-
## Background of Project:
The MechaCar is the newest prototype developed by AutosRU. Unfortunately, production troubles have negatively impacted progress for the manufacturing team. This analysis is being performed to gain insight from the production data gathered so far to help help improve progress. 

In order to complete this analysis, R has been selected to analyze the data through the following steps:

1) Linear Regression to Predict MPG
2) Summary Statistics on Suspension Coils
3) T-Tests on Suspension Coils
4) Study Design: MechaCar vs Competition


## Linear Regression to Predict MPG
### Purpose for Performing Test:
The MechaCar prototypes were designed specifically with multiple specs in mind that together allow for ideal vehicle performance. Such metrics include: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Using the data gathered from all variables, a linear regression is to be performed to see which variables are able to predict the mpg for the MechaCar prototypes.

### Below is the code to read in the mpg data:

![MechaCar_mpg_df_IMPORT](https://user-images.githubusercontent.com/101941048/209418568-9e903a77-ed0a-4555-aaa6-3758191e797b.png)

### Below is the code used to find the linear regression and the results: 

![lm_function_all_variables_MechCar_mpg_df](https://user-images.githubusercontent.com/101941048/209454837-466d351d-b7e5-427f-a10c-5b040b938712.png)

### Result Analysis:
The vehicle length has a Pr(>|t|) value of 2.60e-12 and the ground clearance has a Pr(>|t|) value of 5.21e08. As a p-value of 0.05 or less is considered to be the general standard of significance, both vehicle length and ground clearance can be considered significant in the non-random amount of variance they provideto the mpg values. This also means that the vehicle weight, spoiler angle, and AWD do not have significant p-values and thus cannot be considered to provide non-random amounts of variance.

The p-value is well below the assumed significance level of 0.05%, being at 5.35e-11, and thus allowing the null hypothesis to be rejected and say that the slope of the linear model is not 0. 

The r-squared value is 0.71, which means that the mpg of the MechaCar prototypes can effectively predict mpg ~71% of the time. As many other factors can affect overall mpg (e.g. city vs highway driving, climate, driving style, etc...), a 71% prediction is an effective amount, but should be compared to the generally accepted industry standard r-squared value to fully determine the effectiveness found by this number. 

## Summary Statistics on Suspension Coils
### Purpose for Performing Test:
The data used in this analysis has been gathered from multiple production lots. Though it is important to know the performance overall, the performance per individual lot is important knowledge to have as it shows how consistent the manufacturing process is for all lots. Similar results are ideal, if a lot of variance is seen then that indicates an area of improvement to be addressed. 

### Lot Summary results:
![lot_summary_supension_coil_PSI](https://user-images.githubusercontent.com/101941048/209455439-3c4f66e2-3c6f-4389-8d44-25ebf14eb2aa.png)

### Total Summary results:
![total_summary_suspension_coil_PSI](https://user-images.githubusercontent.com/101941048/209455442-e32afb50-8497-4965-ae03-5db34be88252.png)

### Result Analysis:
According to design specs, the allowable PSI variance for suspension coils is 100 lbs/in^2. Per the total summary results for all lots combined, the variance is at 62, which indicates that overall the design specs are being met. However, this doesn't hold up when looking at the individual lots. Lots 1 and 2 both vary little and fall within the design specs, but lot 3 has a variance of 170 - well exceeding the acceptable variance amount. When compared against competing car brands, this is a necessary area to address.

## T-Tests on Suspension Coils
### Purpose for Performing Test:
The population mean is 1,500 lbs/in^2 for suspension coil PSI. This test is performed to see whether the PSI is statistically different from the population mean when all lots are combined as well as for each individual lot.

### All Lot T-Test:
![t-test_all_lots](https://user-images.githubusercontent.com/101941048/209455913-56da76e9-a0d7-43ec-8137-aaeefb357d10.png)

### Individual Lot T-Tests:
![t-test_lot_1](https://user-images.githubusercontent.com/101941048/209455917-aa78e10b-37d9-4e31-ba0d-aad2604bc18e.png)
![t-test_lot_2](https://user-images.githubusercontent.com/101941048/209455920-4a1c3677-26f0-4fb4-a81e-80541cd62d09.png)
![t-test_lot_3](https://user-images.githubusercontent.com/101941048/209455923-32c7b3aa-46c4-468a-b957-3c85552b974c.png)

### Result Analysis:
As was seen when collecting the summary statistics, the t-test results for all combined data vs individual lots differs. For the combined data the p-value is 0.60, far higher than 0.05 and subsequently failing to reject the null hypothesis. When broken down by lot number, lot 1 has a p-value of 1 and lot 2 has a p-value of 0.61 - thus both fail to reject the null hypothesis. However, lot 3 has a p-value of 0.04 and this lot alone is able to reject the null hypothesis.

## Study Design: MechaCar vs Competition
### Purpose of Future Study:
Cars are a ubiquitous part of everyday society here in the United States. Many workers commute by car everyday, parents drop off/pickup their children, among many others reasons people need to drive. Car technology has advanced much since Henry Ford's Model T graced the streets. Consumers are continually demanding improvement in city/highway mpg, safety features, luxury features (heated seats/steerings wheels, bluetooth connection, gps, etc...), etc... These improvements often coincide with higher purchase costs, as well as higher maintenance/insurance costs. As consumers come from all backgrounds and price points, it is important for AutosRU to be competitive both on the physical aspects of the MechaCar as well as for the overall costs based upon the targeted market group of consumers (e.g. middle class, "soccer moms", wealthy clientele, etc...) as this also determines who the competing brands are. 

### Target Group:
For this study, the targeted group will be consumers who have safety as their number 1 priority, followed by great mpg overall (city and highway combined). 

### Null/Alternative Hypotheses:
Null: There is no statistical difference between safety and mpg performance for MechaCar prototypes vs the competition.
Alternative: There is a statistical difference between safety and mpg performance for MechaCar prototypes vs the competition.

### Statistical Tests to Run:
The mpg data has already been analyzed in this current analysis, however, in the current analysis mpg was the focus. This new study makes safety the prime focus. This means that safety data is needed to be gathered for the MechaCar protypes (via random sampling) and then the following tests should be run:

- Multiple Linear Regression: this is to see which variables can predict the safety of the prototypes
- Summary Statistics: it is important to see if safety standards are being met for all lots rather than just when lots are combined

## Resources:
- dyplr and magrittr library for %>%: https://stackoverflow.com/questions/30248583/error-could-not-find-function
- lm() function code: http://www.sthda.com/english/articles/40-regression-analysis/168-multiple-linear-regression-in-r/
