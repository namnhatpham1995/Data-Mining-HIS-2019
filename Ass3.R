#Question 1
print("Question 1")
x=matrix(c(6,5,7,5,4,3,8,3,5,7,3,6), nrow = 4,ncol=3, dimnames = list(c("Fred","Jenny","Lizzy","Joe"), c("Apple","Pears","Banana")))
print(x)
y=matrix(c(0.5,0.6,0.3,0.4,0.8,0.2,0.35,0.65,0.25), nrow = 3,ncol=3, dimnames = list(c("Apple","Pears","Banana"), c("shop1","shop2","shop3")))
print(y)
print(x%*%y)
print("------------------------------------------------------------")
print("Question 2")