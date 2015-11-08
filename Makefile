plots = plot1.png plot2.png plot3.png plot4.png

all: $(plots) 
clean:
	rm -rf $(plots) household_power_consumption.txt

household_power_consumption.txt:
	curl -s "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" | gunzip > $@

$(plots): %.png: %.R plot_utils.R household_power_consumption.txt
	Rscript --vanilla $<

.PHONY: clean
