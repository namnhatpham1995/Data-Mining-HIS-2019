#Question 1:
shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153,161,167,169,173,176,182,181,188,189)
bspl<-data.frame(shoesize,bodysize)
  
test <- lm(formula = shoesize~bodysize, data = bspl)
summary(test)
plot(shoesize, bodysize)
abline(coef(test), col="red")

#Question 2:
logmodel <- lm(log(bodysize)~shoesize,data=bspl)
summary(logmodel)
plot(shoesize,log(bodysize))
abline(coef(logmodel),col="red")

#Question 3: 
test <-lm(bodysize~shoesize)
test
summary(test)

squareterm <- lm(bodysize~shoesize+I(shoesize^2))
squareterm 
summary(squareterm)

plot(shoesize, bodysize, xlim=c(0, 42), ylim=c(-1000,190))
abline (test$coef, col="red", lwd=3)
x=seq(0, 42, 0.1)
lines(x, squareterm$coef[1]+squareterm$coef[2]*x+squareterm$coef[3]*x^2, col ="green")
