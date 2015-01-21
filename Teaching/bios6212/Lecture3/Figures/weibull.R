setwd("C:/Users/lmcda4.LSUMC-MASTER/Dropbox/Teaching/Survival/Notes/Parametric/Figures")

library(assim)

time <- (1:300)/100
h1 <- hweibull(time, 1, 1/3)
h2 <- hweibull(time, 1, 1/2)
h3 <- hweibull(time, 1, 1)
h4 <- hweibull(time, 1, 2)
h5 <- hweibull(time, 1, 3)

plot(NA, xlim=c(0, 1), ylim=c(0, 3), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h1, col=1)
lines(time, h2, col=2)
lines(time, h3, col=3)
lines(time, h4, col=4)
lines(time, h5, col=5)
legend(x=0.4, y=3, legend=c("kappa=1/3", "kappa=1/2", "kappa=1", "kappa=2", "kappa=3"), fill=c(1:5))

jpeg("weibull.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 3), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h1, col=1)
lines(time, h2, col=2)
lines(time, h3, col=3)
lines(time, h4, col=4)
lines(time, h5, col=5)
legend(x=0.4, y=3, legend=c("kappa=1/3", "kappa=1/2", "kappa=1", "kappa=2", "kappa=3"), fill=1:5)
dev.off()



png("weibull.png")
plot(NA, xlim=c(0, 1), ylim=c(0, 3), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h1, col=1)
lines(time, h2, col=2)
lines(time, h3, col=3)
lines(time, h4, col=4)
lines(time, h5, col=5)
legend(x=0.4, y=3, legend=c("kappa=1/3", "kappa=1/2", "kappa=1", "kappa=2", "kappa=3"), fill=1:5)
dev.off()
