plot(x=seq(-3,3,0.1),y=dnorm(seq(-3,3,0.1)),type="l",xlab="",ylab="")
lines(c(1.645,1.645),c(0,dnorm(1.645)))
polygon(x=c(0,1.645,1.645,seq(1.6,-3,-0.1)),y=c(0,0,dnorm(1.645),dnorm(seq(1.6,-3,-0.1))),col="orange",xlab="",ylab="")