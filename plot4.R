# Exploratory data analysis week 1 - assignment
# Reproduce plot 4

header <- read.table( 'household_power_consumption.txt', nrows = 1, sep = ';' )
df <- read.table( 'household_power_consumption.txt', header = F, skip = 66637, nrows = 2880, sep = ';' )
colnames( df ) <- unlist( header )

png( 'plot4.png', width = 480, height = 480 )
par( mfrow = c( 2, 2))
plot( df$Global_active_power, type = 'l', xaxt = 'n', xlab = '', ylab = 'Global Active Power' )
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )

plot( df$Voltage, type = 'l', xlab = 'datetime', xaxt = 'n', ylab = 'Voltage')
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )

plot( df$Sub_metering_1, col = 'black', type = 'l',  xaxt = 'n', 
      xlab = '', ylab = 'Energy sub metering' )
points( df$Sub_metering_2, col = 'red', type = 'l' )
points( df$Sub_metering_3, col = 'blue', type = 'l' )
legend( 'topright', col = c( 'black', 'red', 'blue' ), lty = 1,
        c( 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3' ), bty = 'n')
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )

plot( df$Global_reactive_power, type = 'l', xlab = 'datetime', xaxt = 'n',
      ylab = 'Global_reactive_power' )
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )
dev.off()

