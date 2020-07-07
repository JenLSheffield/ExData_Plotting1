# Exploratory data analysis week 1 - assignment
# Reproduce plot 2

header <- read.table( 'household_power_consumption.txt', nrows = 1, sep = ';' )
df <- read.table( 'household_power_consumption.txt', header = F, skip = 66637, nrows = 2880, sep = ';' )
colnames( df ) <- unlist( header )

ticks <- c( 0, min( which( df$Date == '2/2/2007')), nrow( df ))

png( 'plot2.png', width = 480, height = 480 )
plot( df$Global_active_power, type = 'l', xaxt = 'n', xlab = '', ylab = 'Global Active Power (kilowatts)' )
axis( 1, at = ticks, labels = c( 'Thu', 'Fri', 'Sat') )
dev.off()