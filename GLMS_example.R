## Polynomials
# 
set.seed(1234)
seq(from=0, to=5, by=0.01)

model_poly <- lm(y ~ poly(x1) + poly(x2))
  

## Binomial GLM
model_binom <- glm(y ~ x1 + x2 + x3, family="binomial")            
  
## Gaussian GLM
model_binom <- glm(y ~ x1 + x2 + x3, family="gaussian")      

## Poisson GLM
model_binom <- glm(y ~ x1 + x2 + x3, family="poisson")      
