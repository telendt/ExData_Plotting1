source("plot_utils.R", chdir = T)

png(filename = "plot3.png",
    width = 480,
    height = 480)
with(getData(), {
    plot(Sub_metering_1 ~ Datetime,
         type = "l",
         col = "black",
         xlab = NA,
         ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ Datetime,
          col = "red")
    lines(Sub_metering_3 ~ Datetime,
          col = "blue")
    legend("topright",
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"),
           lwd=1)
})
dev.off()