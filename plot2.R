source("plot_utils.R", chdir = T)

png(filename = "plot2.png",
    width = 480,
    height = 480)
with(getData(), {
    plot(Global_active_power ~ Datetime,
         xlab = NA,
         ylab = "Global Active Power (kilowatts)",
         type = "l")
})
dev.off()