getData <- (function() {
    dataset <- NULL

    function() {
        if (is.null(dataset)) {
            dataset <<- read.table(
                "household_power_consumption.txt",
                skip = 66637,
                nrows = 2880,
                sep = ";",
                quote = "",
                header = FALSE,
                na.strings = "?",
                colClasses = c(rep("character", 2),
                               rep("numeric", 7)),
                col.names = c("Date",
                              "Time",
                              "Global_active_power",
                              "Global_reactive_power",
                              "Voltage",
                              "Global_intensity",
                              "Sub_metering_1",
                              "Sub_metering_2",
                              "Sub_metering_3"))
            dataset$Datetime <<- as.POSIXct(paste(dataset$Date, dataset$Time),
                                            format = "%d/%m/%Y %H:%M:%S")
        }
        dataset
    }
})()