shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153,161,167,169,173,176,182,181,188,189)
bspl<-data.frame(shoesize,bodysize)
#bspl<-as.matrix(bspl) change from data frame to matrix
fm<-lm(bodysize ~ shoesize, data=bspl)
summary(fm)

plot(shoesize,bodysize)
abline(coef(fm),col="red")



#log modl
logmodel <- lm(log(bodysize)~shoesize,data=bspl)
summary(logmodel)
plot(shoesize,log(bodysize))
abline(coef(logmodel),col="red")

#square term
shoesize2<-(shoesize + I(shoesize^2))
bspl2<-data.frame(shoesize2,bodysize)
squareterm <- lm(bodysize ~ shoesize2, data=bspl2)
summary(squareterm)
plot(shoesize2,bodysize)
abline(coef(squareterm),col="red")
squareterm$residuals

#Q3
x1<- c(-1,1,-1,1)
x2<- c(-1,-1,1,1)
y<- c(3,5,7,11)
y2<- c(2.5,5.5,7.5,10.5)
res<-c(0.5,-0.5,-0.5,0.5)
q3data<-data.frame(x1,x2,y)
fmq3<-lm(y ~ x1+x2, data=q3data)
summary(fmq3)
fmq3$coefficients
myInteractModel<-fmq3$fitted.values
fmq3$residuals

fmq3Int<-lm(y ~ x1+x2+x1:x2, data=q3data)
summary(fmq3Int)
fmq3Int$coefficients
fmq3Int$fitted.values
fmq3Int$residuals

x1new<-c(20,40,20,40)
x2new<-c(20,20,30,30)
newdata<-data.frame(x1new,x2new,y)
newmodel<-lm(y~x1new+x2new,data=newdata)
summary(newmodel)
newmodel$coefficients
newmodel$fitted.values
newmodel$residuals
