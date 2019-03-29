# Statistical Modelling

#### Practicals from statistical modelling class.

Linear regression models a continuous response Y given a continuous or categorical predictor variable x:

X<sub>i</sub>

Y<sub>i</sub> = β0 + β1xi + ei 

y<sub>i</sub> \sim N(x<sub>i</sub>^T \beta, sigma ^2) 


Mathematical extensions of linear regression models allow to overcome assumptions of normality of the data, linearity relationships and variance structure in the model.


## Generalized Linear Models (GLMs)

Generalized Linear Models (GLMs) are extensions of linear regression models that allow to model response with another error distribution model other than normal.
There are four main model diagnostics to ensure when fitting a GLM:
  1. Avoid collinearity
  2. Check that the mean-variance relationship is appropriate
  3. The data given the model are independent
  4. Covariates and response are linear on the link scale

#### Collinearity
We want to avoid including variables who are . Detecting collinearity between variables can be done using Variance Inflation Factors (VIFs). Collinearity is an issue for calculated model coefficients and standard errors. There is no effect however on model predictions if collinearity is present.

#### Temporal Autocorrelation


#### Nonlinearity on the link scale 



## Generalized Additive Models (GAMs)

Generalized Additive Models (GAMs) are GLMs that allow the relationship between response and predictor variables to be non-linear.


#### Polynomials

#### Truncated power basis

#### B-splines



## Generalized Estimating Equations (GEEs)

Genereralized Estimating Equations (GEEs) are extensions of GLMs when the covariance structure is unspecified (the correlation with outcome is unknown with the models parameters). 


## Mixed Effect Models: random intercet and/or random coefficient models

yit = B0 + u0i + B1 x1it + eit
