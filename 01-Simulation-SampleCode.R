numSim <- 1000
numExp <- 40
lambda <- 0.2
set.seed(21)
simMatrix <- matrix(rexp(n = numSim * numExp, rate = lambda), numSim, numExp)
simMean <- rowMeans(simMatrix)
simData <- data.frame(cbind(simMatrix, simMean))

ggplot(data = simData, aes(simData$simMean)) + 
    geom_histogram(breaks = seq(2, 9, by = 0.2), aes(fill = ..count..)) + 
    labs(title = "Histogram of Mean Distribution", x = "Simulation Means", y = "Frequency") + 
    geom_vline(aes(xintercept=mean(simData$simMean)), color="black", 
               linetype="dashed", size=1) + 
    scale_fill_gradient(low="blue", high="yellow")

actMean <- mean(simMean)
theoMean <- (1 / lambda)

actVar <- var(simMean)
theoVar <- ((1 / lambda)^2/numExp)

qplot(simMean, geom = 'blank') + 
    geom_line(aes(y=..density.., colour='Simulated Data'), stat='density', size=1) + 
    stat_function(fun=dnorm, args=list(mean=(1/lambda), sd=((1/lambda)/sqrt(numExp))), 
                  aes(colour='Normal Distribution'), size=1) + 
    geom_histogram(aes(y=..density.., fill=..density..), alpha=0.4, 
                   breaks = seq(2, 9, by = 0.15), col='red') + 
    scale_fill_gradient("Density", low = "blue", high = "yellow") + 
    scale_color_manual(name='Density', values=c('black', 'blue')) + 
    theme(legend.position = c(0.75, 0.50)) + 
    labs(title = "Mean Density Distribution", x = "Simulation Means", y = "Density")

theoConfInterval <- theoMean + c(-1,1) * 1.96 * sqrt(theoVar)/sqrt(numExp)
theoConfInterval

actConfInterval <- actMean + c(-1,1) * 1.96 * sqrt(actVar)/numExp
actConfInterval
