#Q1
shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153, 161, 167, 169, 173, 176, 182, 181, 188, 189)
y<-as.matrix(bodysize)
matrixX<-data.frame(rep(1,10),shoesize)
data.frame(rep(1,10),shoesize)
transX<-t(matrixX)
XtX<-t(matrixX)%*%as.matrix(matrixX)
tXtX<-solve(XtX)
Xty<-transX %*% y
b<-solve(XtX) %*% as.matrix(transX) %*% y

ypred<-as.matrix(matrixX) %*% as.matrix(solve(XtX)) %*% as.matrix(transX) %*% y
print(ypred)
ss_res<-sum((ypred - y)^2)
ms_res<-ss_res / 8
rse<-sqrt(ms_res)
tvalue<-b/rse
print(tvalue)
print(pt(b,8,lower.tail=FALSE))

#Q2
shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153, 161, 167, 169, 173, 176, 182, 181, 188, 189)
bspl<-data.frame(shoesize,bodysize)
#bspl<-as.matrix(bspl) change from data frame to matrix
fm<-lm(bodysize ~ shoesize, data=bspl)
summary(fm)

#a
plot(shoesize, resid(fm), main="Shoesize vs Residual",xlab="Shoesize", ylab="Residuals")
#b
plot(fitted(fm), resid(fm), main="Residuals vs Fitted",xlab="Fitted values", ylab="Residuals")
#c
plot(fitted(fm), bodysize, main="Fitted vs bodysize",xlab="Fitted values", ylab="bodysize")
#d
hist( resid(fm))
#e
qqnorm(resid(fm), main="Residuals Rankit Plot")
