source("plot_utils.R", chdir = T)

png(filename = "plot1.png",
    width = 480,
    height = 480)
label <- "Global Active Power"
with(getData(),
     hist(Global_active_power,
          main = label,
          xlab = paste(label, "(kilowatts)"),
          col = "red"))
dev.off()