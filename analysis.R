data <- read.csv('data/coord_data.csv')

# Q0. What is our goal?
data$lat <- sapply(data$deg_S, fix_coords)
data$lon <- sapply(data$deg_W, fix_coords)

# Q1. How might we go about assessing the scale of the problem?

# Q2. What tools are at our disposal?

# Q3. But what does it all mean?!!!

# Q4. How can we tell we did it properly?
