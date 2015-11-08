source("plot_utils.R", chdir = T)

png(filename = "plot4.png",
    width = 480,
    height = 480)
with(getData(), {
    par(mfrow = c(2, 2))

    # 1st plot
    plot(Global_active_power ~ Datetime,
         xlab = NA,
         ylab = "Global Active Power",
         type = "l")

    # 2nd plot
    plot(Voltage ~ Datetime,
         xlab = "datetime",
         type = "l")

    # 3rd plot
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
           bty = "n",
           col = c("black", "red", "blue"),
           lwd=1)

    # 4th plot
    plot(Global_reactive_power ~ Datetime,
         xlab = "datetime",
         type = "l")
})
dev.off()