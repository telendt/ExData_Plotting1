# Exploratory Data Analysis, Peer Assessment, Course Project 1

Please find instructions [here](/instructions/README.md).

## Build instructions

Assuming you have GNU Make installed:

    make

Otherwise download [the dataset](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)
and unzip it in current directory (so that there is
`household_power_consumption.txt` file in root directory of this repository).
Next, run the following command:

    for i in {1..4}; do Rscript plot$i.R; done

## Code and plots

### Plot 1

````R
label <- "Global Active Power"
with(data,
     hist(Global_active_power,
          main = label,
          xlab = paste(label, "(kilowatts)"),
          col = "red"))
```

![plot-1](plot1.png)

### Plot 2

````R
with(data, {
    plot(Global_active_power ~ Datetime,
         xlab = NA,
         ylab = "Global Active Power (kilowatts)",
         type = "l")
})
```

![plot-2](plot2.png)

### Plot 3

````R
with(data, {
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
```

![plot-3](plot3.png)

### Plot 4

````R
with(data, {
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
```

![plot-4](plot4.png)