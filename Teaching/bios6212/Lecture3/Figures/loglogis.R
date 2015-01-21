setwd("C:/Users/lmcda4.LSUMC-MASTER/Dropbox/Teaching/Survival/Notes/Parametric/Figures")

library(assim)

time <- (1:1000)/100
h1 <- hloglogis(time, 1, 1/3)
h2 <- hloglogis(time, 1, 1/2)
h3 <- hloglogis(time, 1, 1)
h4 <- hloglogis(time, 1, 2)
h5 <- hloglogis(time, 1, 3)

plot(NA, xlim=c(0, 10), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h1, col=1)
lines(time, h2, col=2)
lines(time, h3, col=3)
lines(time, h4, col=4)
lines(time, h5, col=5)
legend("topright", legend=c("beta=1/3", "beta=1/2", "beta=1", "beta=2", "beta=3"), fill=c(1:5))

jpeg("loglogis.jpg")
plot(NA, xlim=c(0, 10), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h1, col=1)
lines(time, h2, col=2)
lines(time, h3, col=3)
lines(time, h4, col=4)
lines(time, h5, col=5)
legend("topright", legend=c("beta=1/3", "beta=1/2", "beta=1", "beta=2", "beta=3"), fill=c(1:5))
dev.off()



png("loglogis.png")
plot(NA, xlim=c(0, 10), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard (events/year)")
lines(time, h3, col=1)
lines(time, h4, col=2)
lines(time, h5, col=3)
legend("topright", legend=c("beta=1", "beta=2", "beta=3"), fill=c(1:5))
dev.off()
