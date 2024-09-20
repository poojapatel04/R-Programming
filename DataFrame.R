# Question 1. Access the worms.txt file and load it on your current R session as worms.
worms = read.table("~/Downloads/worms.txt",header=T)
worms

# Question 2. Access the worms data frame and return rows 3 through 15 and columns 1 through 4 and assign the values into worms2.
worms1 = worms[c(3:15),c(1:4)]
worms1

# Question 3. Write worms2 as a .csv file into your C drive inside a folder called CS306.
write.csv(worms1,file="quiz.csv")


# Question 4. Remove rows 1 and 2, and column 3 from worms2 and then assign the rest of the values into a data frame called worms3.
worms2 = worms[c(-1,-2)-3]
worms2

# Question 5. Sample 5 data points with all the columns from the worms Data Frame and assign the values into worm4.
x = sample(1:20,5,replace = FALSE)
worm3 = worms[x, ]

# Question 6. Filter worms to show the farms data with Vegetation Scrub or Meadow, and all the farms with Soil.pH level more than 5.0. Assign the values into a data frame called worm5.
worm5 = worms[(worms$Vegetation == "Meadow" | worms$Vegetation =="Scrub") & worms$Soil.pH > 5.0, ]
worm5
# Question 7. Filter worms to show the farms with Area more than 3.0 and Worm.density less than 9. Return only columns 1, 2, 3, and 7. Assign the values into a data frame called worm6.
worm6=worms[(worms$Area>3 & worms$density<9),c(1:3,7)]
worm6
# Question 8. Sort the worms data frame to show the records by Area in descending order and Worm.density in ascending order.
srtWorms = worms[order(-worms$Area, worms$Worm.density),]

# Question 9. Use the laaply() function and find the mean, median, standard deviation in worms data frame.
stats = lapply(worms[, sapply(worms, is.numeric)], function(x) c(mean(x), median(x), sd(x)))
z=lapply(worms,mean)
z=lapply(worms,median)
z=lapply(worms,sd)

# Question 10. Add a new row to the worms data frame with the following data: Ann.Farm, 10, 12, Meadow, 3.5, TRUE, 6
rbind(worms,c("Ann.Farm",10,12,"Meadow",3.5,TRUE,6))