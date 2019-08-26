#1
a<-Ass6_dm_data
fm<-lm(a$age ~ a$Leukos+a$Lymphos+a$CD14p+a$CD3p+a$CD4p+a$CD56p+a$CD8p+a$CD19p, data = a)
print(summary(fm))
plot(fm$fitted.values,fm$residuals)
hist(fm$residuals)

b<-Ass6_predict
print("Predicted ages****")
pred <- rep(fm$coefficients[[1]],20) + fm$coefficients[2]*b$Leukos + fm$coefficients[3]*b$Lymphos
+fm$coefficients[4]*b$CD14p + fm$coefficients[5]*b$CD3p + fm$coefficients[6]*b$CD4p
+fm$coefficients[7]*b$CD56p + fm$coefficients[8]*b$CD8p + fm$coefficients[9]*b$CD19p
print(pred)

#2
fmlog<-lm(a$age ~ log(a$Leukos+1)
          +log(a$Lymphos+1)+log(a$CD14p+1)+log(a$CD3p+1)+log(a$CD4p+1)+log(a$CD56p+1)
          +log(a$CD8p+1)+log(a$CD19p+1), data = a)
plot(fmlog$fitted.values,fmlog$residuals)
hist(fmlog$residuals)

#3
fmlog3<-lm(sqrt(a$age) ~ log(a$Leukos+1)
           +log(a$Lymphos+1)+log(a$CD14p+1)+log(a$CD3p+1)+log(a$CD4p+1)+log(a$CD56p+1)
           +log(a$CD8p+1)+log(a$CD19p+1), data = a)
plot(fmlog3$fitted.values,fmlog3$residuals)
#hist(fmlog3$residuals)
print(sqrt(sum(fm$residuals^2)))
print(sqrt(sum(fmlog$residuals^2)))
print(sqrt(sum(fmlog3$residuals^2)))