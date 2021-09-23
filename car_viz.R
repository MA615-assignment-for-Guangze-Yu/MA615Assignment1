
library(tidyverse)

# call built-in data mtcars.
data(mtcars)

# Select only car models where mpg<20
mtcars_mpg2 <- mtcars[mtcars$mpg < 20,]
### Select for conditional dataframe, which help us to decrease the difficulty to handle of dataset.

# Reduce the variables to mpg, cyl, disp, hp, gears
mtcars_mpg2 <- mtcars_mpg2[, c(1,2,3,4,10)]
## Select for related columns to decrease the difficulty of dataset.

# read the R file hand_functions.R so that it can be used
# notice that with echo = TRUE 
source(file = "hand_functions.R", echo = TRUE)
## cite for outside function which is useful for the following part. 
# Now use the function from hand_functions.R

sp_out <- sum_special(mtcars_mpg2)
## using self-define function.

# library(esquisse)
# 
# esquisser(data = mtcars_mpg2, viewer = "browser")



ggplot(mtcars_mpg2) +
  aes(x = disp, y = mpg) +
  geom_point(shape = "bullet", size = 4L, colour = "#B22222") +
  geom_smooth(span = 0.5) +
  theme_minimal()


## Plot for scatter plot of variables.

# note that this boxplot cannot be made with esquisse() unless
# the data is adjusted.  What adjustment is needed?
## The cyl should become to factors if want to plot. 


ggplot(mtcars_mpg2, aes(x=as.factor(cyl), y=mpg)) + 
  geom_boxplot(fill="slateblue", alpha=0.2) + 
  xlab("cyl")

## Plot for scatter plot of variables by groups.


## esquisser(data = mtcars_mpg2, viewer = "browser")


