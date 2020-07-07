# Exploratory data analysis week 1 - assignment
# Reproduce plot 1

header <- read.table( 'household_power_consumption.txt', nrows = 1, sep = ';' )
df <- read.table( 'household_power_consumption.txt', header = F, skip = 66637, nrows = 2880, sep = ';' )
colnames( df ) <- unlist( header )

png( 'plot1.png', width = 480, height = 480 )
hist( df$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', 
      ylab = 'Frequency', main = 'Global Active Power' )
dev.off()