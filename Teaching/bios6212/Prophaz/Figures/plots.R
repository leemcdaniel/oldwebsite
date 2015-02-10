setwd("C:/Users/lmcda4/Dropbox/Teaching/Survival/Notes/Hypothesis Testing/Figures")

jpeg("pl1.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(c(0,1), c(1,1), lty=1)
lines(c(0,1), c(2,2), lty=2)
dev.off()

x <- ((1:100)/100)
h1 <- x
h2 <- 2*x
jpeg("pl2.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()

x <- ((1:100)/100)
h1 <- x^2
h2 <- 2*x^2
jpeg("pl3.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()


x <- ((1:100)/100)
h1 <- exp(-x)
h2 <- 2*exp(-x)
jpeg("pl4.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()

x <- ((1:100)/100)
h1 <- 2*exp(-x)
h2 <- 2*exp(-x) - 1/2
jpeg("pl5.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()


x <- ((1:100)/100)
h1 <- 2*exp(-x)
h2 <- 2*exp(-x) - 1/2
jpeg("pl6.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()



x <- ((1:100)/100)
h1 <- x
h2 <- x + 1
jpeg("pl7.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()



x <- ((1:100)/100)
h1 <- x
h2 <- exp(-x)+1
jpeg("pl8.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()



x <- ((1:100)/100)
h1 <- 2*exp(x)/exp(1)
h2 <- exp(-x)
jpeg("pl9.jpg")
plot(NA, xlim=c(0, 1), ylim=c(0, 2), xlab="Time (years)", ylab="Hazard Rate (events/year)")
lines(x, h1, lty=1)
lines(x, h2, lty=2)
dev.off()


x <- ((1:1000)/100)
h1 <- 0.05*x + 0.3
h2 <- Vectorize(function(x){
  if(x <= 3){
    .9 - 0.05*x
  }else if(x > 3 & x < 5){
    .9 - 0.05*3 - 0.2*(x-3)
  }else{
    .9 - 0.05*3 - 0.2*2 - 0.02*(x-5)
  }
})


jpeg("pl10.jpg")
plot(NA, xlim=c(0, 10), ylim=c(0, 1), xlab="Time (weeks)", ylab="Hazard Rate (events/week)")
lines(x, h1, lty=1)
lines(x, h2(x), lty=2)
legend("topright", legend=c("Medical", "Surgical"), lty=c(1,2))
dev.off()