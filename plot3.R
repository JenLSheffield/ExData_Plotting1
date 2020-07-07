# Exploratory data analysis week 1 - assignment
# Reproduce plot 3

header <- read.table( 'household_power_consumption.txt', nrows = 1, sep = ';' )
df <- read.table( 'household_power_consumption.txt', header = F, skip = 66637, nrows = 2880, sep = ';' )
colnames( df ) <- unlist( header )

ticks <- c( 0, min( which( df$Date == '2/2/2007')), nrow( df ))

png( 'plot3.png', width = 480, height = 480 )
plot( df$Sub_metering_1, col = 'black', type = 'l',  xaxt = 'n', 
      xlab = '', ylab = 'Energy sub metering' )
points( df$Sub_metering_2, col = 'red', type = 'l' )
points( df$Sub_metering_3, col = 'blue', type = 'l' )
legend( 'topright', col = c( 'black', 'red', 'blue' ), lty = 1,
        c( 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3' ))
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )
dev.off()
