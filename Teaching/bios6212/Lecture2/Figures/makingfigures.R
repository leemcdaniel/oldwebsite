library(KMsurv)

ti <- (1:300)/100

plot(1-ploglogis(ti, 1, 3))

plot(1-pweibull(ti, 3, 1))

kappa <- 2
beta <- 4

jpeg("survcurves.jpg")
plot(NA, xlim=c(0,3), ylim=c(0,1), xlab="Time (years)", ylab="Survival Function")
lines(ti, 1-ploglogis(ti, 1, beta), lty=1)
lines(ti, 1-pweibull(ti, kappa,1), lty=2)
dev.off()

jpeg("hazcurves.jpg")
plot(NA, xlim=c(0,3), ylim=c(0,6), xlab="Time (years)", ylab="Hazard Function (events/year)")
lines(ti, hloglogis(ti, 1, beta), lty=1)
lines(ti, hweib(ti, 1,kappa), lty=2)
dev.off()


haz <- function(t) 0.000016443*1.124^t
times <- (1:1000)/10

jpeg("dutchmen.jpg")
plot(NA, xlab="Time (years)", ylab="Hazard Rate (events/year)", xlim=c(0,100), ylim=c(0,2))
lines(times, haz(times))
dev.off()
