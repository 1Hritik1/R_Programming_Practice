e_quakes <- datasets::quakes

head(e_quakes)

head(e_quakes,10)

tail(e_quakes)

tail(e_quakes,10)

e_quakes$lat

summary(e_quakes$lat)

summary(e_quakes$depth)

summary(e_quakes)

plot(e_quakes$depth)

plot(e_quakes$lat, e_quakes$depth)

plot(e_quakes$long, e_quakes$mag, main = "Earth Quckes", xlab = "Long", ylab = "Magnitude", type = "p")

barplot(e_quakes$mag, main = "Earth Quake Magnitude", ylab = "Magnitude", col = "blue", horiz = "F", axes = "T")

hist(e_quakes$mag)

hist(e_quakes$mag, main = "Earth Quakes Magnitude", col = "Blue", xlab = "Magnitude")

boxplot(e_quakes$mag, main = "Magnitude")

boxplot.stats(e_quakes$mag)$out


boxplot(e_quakes[,1:5], main = "Multiple Plot")

par(mfrow=c(2,2), mar = c(2,5,2,1), las = "1", bty = "o")

plot(e_quakes$depth)

plot(e_quakes$lat, e_quakes$depth)

plot(e_quakes$long, e_quakes$mag, main = "Earth Quckes", xlab = "Long", ylab = "Magnitude", type = "p")

barplot(e_quakes$mag, main = "Earth Quake Magnitude", ylab = "Magnitude", col = "blue", horiz = "F", axes = "T")

sd(e_quakes$mag, na.rm = T)
install.packages("moments")
library(moments)
skewness(e_quakes$mag, na.rm=T)
kurtosis(e_quakes$mag, na.rm=T)


hist(e_quakes$long)
skewness(e_quakes$long, na.rm=T)
kurtosis(e_quakes$long, na.rm=T)
sd(e_quakes$long, na.rm = T)


hist(e_quakes$depth)
skewness(e_quakes$depth, na.rm=T)
kurtosis(e_quakes$depth, na.rm=T)
sd(e_quakes$depth, na.rm = T)
var(e_quakes$mag)

plot(e_quakes)

plot(e_quakes$mag, e_quakes$depth)
