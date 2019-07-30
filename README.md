# Statistical Modelling

Statistical modelling is a set of mathematical equations that simplifies and formalizes data with the constitution of statistical assumptions. A common statistical model analysis is regression, which estimates the relationship among variables.


A simple linear regression investigates the linear relationship between a continuous response <img src="https://latex.codecogs.com/gif.latex?Y" title="Y" /> and a continuous or categorical predictor variable <img src="https://latex.codecogs.com/gif.latex?X_{i}" title="x_{i}" />:

<img src="https://latex.codecogs.com/gif.latex?Y_{i}&space;=&space;\beta&space;_{0}&space;&plus;&space;\beta&space;_{1}x_{1}&space;&plus;&space;\varepsilon&space;_{i}" title="Y_{i} = \beta _{0} + \beta _{1}x_{1} + \varepsilon _{i}" />

<img src="https://latex.codecogs.com/gif.latex?\beta&space;{_{1}^{}}" title="\beta {_{1}^{}}" /> , is the slope of the line, it represents a change in response <img src="https://latex.codecogs.com/gif.latex?Y{_{i}}" title="Y{_{i}}" /> with 1 unit increase in <img src="https://latex.codecogs.com/gif.latex?x{_{i}}" title="x{_{i}}" />. 

<img src="https://latex.codecogs.com/gif.latex?Y{_{i}}&space;\sim&space;N(0,&space;\sigma&space;^{2}&space;)" title="Y{_{i}} \sim N(0, \sigma ^{2} )" />


Mathematical extensions of linear regression models allow to overcome assumptions of normality of the data, linearity relationships and variance structure in the model.

A function lm() in R Statistical software package.

## Generalized Linear Models (GLMs)

Generalized Linear Models (GLMs) are extensions of linear regression models that allow to model response with another error distribution model other than normal.
There are four main model diagnostics to ensure when fitting a GLM:
  1. Avoid collinearity
  2. Check that the mean-variance relationship is appropriate
  3. The data given the model are independent
  4. Covariates and response are linear on the link scale


#### Collinearity
We want to avoid including predictor variables that provide similar information in the same model. 

The response data contains both *signal*, describing the underlying mean function of the process, and *noise*, the variability of the points about the underlying mean function. 
We want a bias-variance trade-off.

Detecting collinearity between variables can be done using Variance Inflation Factors (VIFs). Collinearity is an issue for calculated model coefficients and standard errors. There is no effect however on model predictions if collinearity is present.

* Ridge Regression 

* Lasso 

* Elastic Net 
Combines both ridge regression and lasso.

#### Temporal Autocorrelation
We want the data, given the model, to be independent meaning we assume the residuals of the model to be independent having no patterns or present autocorrelations.

* Diagnosing temporal autocorrelations:
Wald-Wolfowitz runs test help diagnose non-independence in the model errors. The test statistic 

* Positive correlation
To overcome positive correlation Generalized Estimating Equations (GEEs) could be used.

#### Nonlinearity on the link scale 
A final model diagnostic is the checking that the covariate relationships are well described as linear on the link scale. 


## Generalized Additive Models (GAMs)

Generalized Additive Models (GAMs) are GLMs that allow the relationship between response and predictor variables to be non-linear.

#### Polynomials
Polynomials are basis expansions functions where there are as many columns as the degree of the polynomial and added as a additive predictor on the scale of the link function.

#### Truncated power basis
Truncated power basis are locally defined where each column only has non-zero values between certain x-values, determined by the "knot" locations.

#### B-splines
B-splines are also locally defined and are piece-wise polynomial functions which are joined smoothly at each "knot".

## Generalized Estimating Equations (GEEs)

Genereralized Estimating Equations (GEEs) are extensions of GLMs when the covariance structure is unspecified (the correlation with outcome is unknown with the models parameters). 

## Mixed Effect Models: random intercet and/or random coefficient models

### Random Intercept Models
yit = B0 + u0i + B1 x1it + eit


### Random Coefficient Models
yit = B0 + u0i + B1 x1it + eit
