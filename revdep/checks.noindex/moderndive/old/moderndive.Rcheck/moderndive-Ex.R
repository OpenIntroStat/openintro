pkgname <- "moderndive"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('moderndive')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("DD_vs_SB")
### * DD_vs_SB

flush(stderr()); flush(stdout())

### Name: DD_vs_SB
### Title: Dunkin Donuts vs Starbucks
### Aliases: DD_vs_SB
### Keywords: datasets

### ** Examples

# Compute correlation between a census tract's median income and number of cafes of
# each type after removing two cases where median_income is missing
library(dplyr)
DD_vs_SB %>%
  mutate(shops_per_1000 = 1000 * shops / population) %>%
  filter(!is.na(median_income)) %>%
  group_by(shop_type) %>%
  summarize(cor = cor(median_income, shops_per_1000))



cleanEx()
nameEx("MA_schools")
### * MA_schools

flush(stderr()); flush(stdout())

### Name: MA_schools
### Title: Massachusetts Public High Schools Data
### Aliases: MA_schools
### Keywords: datasets

### ** Examples

library(ggplot2)
ggplot(MA_schools, aes(x = perc_disadvan, y = average_sat_math, color = size)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(y = "Math SAT score", x = "Percentage economically disadvantaged", color = "School size")



cleanEx()
nameEx("bowl")
### * bowl

flush(stderr()); flush(stdout())

### Name: bowl
### Title: A sampling bowl of red and white balls
### Aliases: bowl
### Keywords: datasets

### ** Examples

library(dplyr)
library(ggplot2)

# Take 10 different samples of size n = 50 balls from bowl
bowl_samples_simulated <- bowl %>%
  rep_sample_n(50, reps = 10)

# Compute 10 different p_hats (prop red) based on 10 different samples of
# size n = 50
p_hats <- bowl_samples_simulated %>%
  group_by(replicate, color) %>%
  summarize(count = n()) %>%
  mutate(proportion = count / 50) %>%
  filter(color == "red")

# Plot sampling distribution
ggplot(p_hats, aes(x = proportion)) +
  geom_histogram(binwidth = 0.05) +
  labs(
    x = expression(hat(p)), y = "Number of samples",
    title = "Sampling distribution of p_hat based 10 samples of size n = 50"
  )



cleanEx()
nameEx("bowl_sample_1")
### * bowl_sample_1

flush(stderr()); flush(stdout())

### Name: bowl_sample_1
### Title: Tactile sample of size 50 from a bowl of balls
### Aliases: bowl_sample_1
### Keywords: datasets

### ** Examples

library(ggplot2)

# Barplot of distribution of balls in sample
ggplot(bowl_sample_1, aes(x = color)) +
  geom_bar() +
  labs(title = "50 sampled bals from bowl")



cleanEx()
nameEx("bowl_samples")
### * bowl_samples

flush(stderr()); flush(stdout())

### Name: bowl_samples
### Title: Sampling from a bowl of balls
### Aliases: bowl_samples
### Keywords: datasets

### ** Examples

library(dplyr)
library(ggplot2)

# Compute proportion red
bowl_samples <- bowl_samples %>%
  mutate(prop_red = red / n)

# Plot sampling distributions
ggplot(bowl_samples, aes(x = prop_red)) +
  geom_histogram(binwidth = 0.05) +
  labs(
    x = expression(hat(p)), y = "Number of samples",
    title = "Sampling distribution of p_hat based 10 samples of size n = 50"
  )



cleanEx()
nameEx("evals")
### * evals

flush(stderr()); flush(stdout())

### Name: evals
### Title: Teaching evaluations at the UT Austin
### Aliases: evals
### Keywords: datasets

### ** Examples

library(dplyr)
glimpse(evals)



cleanEx()
nameEx("geom_categorical_model")
### * geom_categorical_model

flush(stderr()); flush(stdout())

### Name: geom_categorical_model
### Title: Regression model with one categorical explanatory/predictor
###   variable
### Aliases: geom_categorical_model

### ** Examples

library(dplyr)
library(ggplot2)

p <- ggplot(mpg, aes(x = drv, y = hwy)) +
  geom_point() +
  geom_categorical_model()
p

# You can use different colors for each categorical level
p %+% aes(color = drv)

# But mapping the color aesthetic doesn't change the model that is fit
p %+% aes(color = class)



cleanEx()
nameEx("geom_parallel_slopes")
### * geom_parallel_slopes

flush(stderr()); flush(stdout())

### Name: geom_parallel_slopes
### Title: Parallel slopes regression model
### Aliases: geom_parallel_slopes

### ** Examples

library(dplyr)
library(ggplot2)

ggplot(evals, aes(x = age, y = score, color = ethnicity)) +
  geom_point() +
  geom_parallel_slopes(se = FALSE)

# Basic usage
ggplot(evals, aes(x = age, y = score, color = ethnicity)) +
  geom_point() +
  geom_parallel_slopes()
ggplot(evals, aes(x = age, y = score, color = ethnicity)) +
  geom_point() +
  geom_parallel_slopes(se = FALSE)

# Supply custom aesthetics
ggplot(evals, aes(x = age, y = score, color = ethnicity)) +
  geom_point() +
  geom_parallel_slopes(se = FALSE, size = 4)

# Fit non-linear model
example_df <- house_prices %>%
  slice(1:1000) %>%
  mutate(
    log10_price = log10(price),
    log10_size = log10(sqft_living)
  )
ggplot(example_df, aes(x = log10_size, y = log10_price, color = condition)) +
  geom_point(alpha = 0.1) +
  geom_parallel_slopes(formula = y ~ poly(x, 2))

# Different grouping
ggplot(example_df, aes(x = log10_size, y = log10_price)) +
  geom_point(alpha = 0.1) +
  geom_parallel_slopes(aes(fill = condition))



cleanEx()
nameEx("get_correlation")
### * get_correlation

flush(stderr()); flush(stdout())

### Name: get_correlation
### Title: Get correlation value in a tidy way
### Aliases: get_correlation

### ** Examples

library(moderndive)

# Compute correlation between mpg and cyl:
mtcars %>%
  get_correlation(formula = mpg ~ cyl)

# Group by one variable:
library(dplyr)
mtcars %>%
  group_by(am) %>%
  get_correlation(formula = mpg ~ cyl)

# Group by two variables:
mtcars %>%
  group_by(am, gear) %>%
  get_correlation(formula = mpg ~ cyl)



cleanEx()
nameEx("get_regression_points")
### * get_regression_points

flush(stderr()); flush(stdout())

### Name: get_regression_points
### Title: Get regression points
### Aliases: get_regression_points

### ** Examples

library(dplyr)
library(tibble)

# Convert rownames to column
mtcars <- mtcars %>%
  rownames_to_column(var = "automobile")

# Fit lm() regression:
mpg_model <- lm(mpg ~ cyl, data = mtcars)

# Get information on all points in regression:
get_regression_points(mpg_model, ID = "automobile")

# Create training and test set based on mtcars:
training_set <- mtcars %>%
  sample_frac(0.5)
test_set <- mtcars %>%
  anti_join(training_set, by = "automobile")

# Fit model to training set:
mpg_model_train <- lm(mpg ~ cyl, data = training_set)

# Make predictions on test set:
get_regression_points(mpg_model_train, newdata = test_set, ID = "automobile")



cleanEx()
nameEx("get_regression_summaries")
### * get_regression_summaries

flush(stderr()); flush(stdout())

### Name: get_regression_summaries
### Title: Get regression summary values
### Aliases: get_regression_summaries

### ** Examples

library(moderndive)

# Fit lm() regression:
mpg_model <- lm(mpg ~ cyl, data = mtcars)

# Get regression summaries:
get_regression_summaries(mpg_model)



cleanEx()
nameEx("get_regression_table")
### * get_regression_table

flush(stderr()); flush(stdout())

### Name: get_regression_table
### Title: Get regression table
### Aliases: get_regression_table

### ** Examples

library(moderndive)

# Fit lm() regression:
mpg_model <- lm(mpg ~ cyl, data = mtcars)

# Get regression table:
get_regression_table(mpg_model)



cleanEx()
nameEx("gg_parallel_slopes")
### * gg_parallel_slopes

flush(stderr()); flush(stdout())

### Name: gg_parallel_slopes
### Title: Plot parallel slopes model
### Aliases: gg_parallel_slopes

### ** Examples

## Not run: 
##D library(ggplot2)
##D library(dplyr)
##D library(moderndive)
##D 
##D # log10() transformations
##D house_prices <- house_prices %>%
##D   mutate(
##D     log10_price = log10(price),
##D     log10_size = log10(sqft_living)
##D   )
##D 
##D # Output parallel slopes model plot:
##D gg_parallel_slopes(
##D   y = "log10_price", num_x = "log10_size", cat_x = "condition",
##D   data = house_prices, alpha = 0.1
##D ) +
##D   labs(
##D     x = "log10 square feet living space", y = "log10 price in USD",
##D     title = "House prices in Seattle: Parallel slopes model"
##D   )
##D 
##D # Compare with interaction model plot:
##D ggplot(house_prices, aes(x = log10_size, y = log10_price, col = condition)) +
##D   geom_point(alpha = 0.1) +
##D   geom_smooth(method = "lm", se = FALSE, size = 1) +
##D   labs(
##D     x = "log10 square feet living space", y = "log10 price in USD",
##D     title = "House prices in Seattle: Interaction model"
##D   )
## End(Not run)



cleanEx()
nameEx("house_prices")
### * house_prices

flush(stderr()); flush(stdout())

### Name: house_prices
### Title: House Sales in King County, USA
### Aliases: house_prices
### Keywords: datasets

### ** Examples

library(dplyr)
library(ggplot2)

# Create variable log of house price
house_prices <- house_prices %>%
  mutate(log_price = log(price))

# Plot histogram of log of house price
ggplot(house_prices, aes(x = log_price)) +
  geom_histogram()



cleanEx()
nameEx("moderndive")
### * moderndive

flush(stderr()); flush(stdout())

### Name: moderndive
### Title: moderndive - Tidyverse-Friendly Introductory Linear Regression
### Aliases: moderndive

### ** Examples

library(moderndive)

# Fit regression model:
mpg_model <- lm(mpg ~ hp, data = mtcars)

# Regression tables:
get_regression_table(mpg_model)

# Information on each point in a regression:
get_regression_points(mpg_model)

# Regression summaries
get_regression_summaries(mpg_model)

# Plotting parallel slopes models
library(ggplot2)
ggplot(evals, aes(x = age, y = score, color = ethnicity)) +
  geom_point() +
  geom_parallel_slopes(se = FALSE)



cleanEx()
nameEx("movies_sample")
### * movies_sample

flush(stderr()); flush(stdout())

### Name: movies_sample
### Title: Random sample of 68 action and romance movies
### Aliases: movies_sample
### Keywords: datasets

### ** Examples

library(ggplot2)

# Visualize relationship between rating and genre
ggplot(data = movies_sample, aes(x = genre, y = rating)) +
  geom_boxplot() +
  labs(x = "Genre: Action or Romance", y = "IMDb rating")



cleanEx()
nameEx("mythbusters_yawn")
### * mythbusters_yawn

flush(stderr()); flush(stdout())

### Name: mythbusters_yawn
### Title: Data from Mythbusters' study on contagiousness of yawning
### Aliases: mythbusters_yawn
### Keywords: datasets

### ** Examples

library(ggplot2)

# Plot both variables as a stacked proportional bar chart
ggplot(mythbusters_yawn, aes(x = group, fill = yawn)) +
  geom_bar(position = "fill") +
  labs(
    x = "", y = "Proportion",
    title = "Proportion of yawn and not yawn for each group"
  )



cleanEx()
nameEx("orig_pennies_sample")
### * orig_pennies_sample

flush(stderr()); flush(stdout())

### Name: orig_pennies_sample
### Title: A random sample of 40 pennies sampled from the 'pennies' data
###   frame
### Aliases: orig_pennies_sample
### Keywords: datasets

### ** Examples

library(dplyr)
library(ggplot2)

# Take 50 different resamples/bootstraps from the original sample
many_bootstraps <- orig_pennies_sample %>%
  rep_sample_n(size = 40, replace = TRUE, reps = 50)
many_bootstraps

# Compute mean year of minting for each bootstrap sample
bootstrap_means <- many_bootstraps %>%
  group_by(replicate) %>%
  summarize(mean_year = mean(year))

# Plot sampling distribution
ggplot(bootstrap_means, aes(x = mean_year)) +
  geom_histogram(binwidth = 1, color = "white") +
  labs(
    x = expression(bar(x)), y = "Number of samples",
    title = "Bootstrap distribution of x_bar based 50 resamples of size n = 40"
  )



cleanEx()
nameEx("pennies")
### * pennies

flush(stderr()); flush(stdout())

### Name: pennies
### Title: A population of 800 pennies sampled in 2011
### Aliases: pennies
### Keywords: datasets

### ** Examples

library(dplyr)
library(ggplot2)

# Take 25 different samples of size n = 50 pennies from population
many_samples <- pennies %>%
  rep_sample_n(size = 50, reps = 25)
many_samples

# Compute mean year of minting for each sample
sample_means <- many_samples %>%
  group_by(replicate) %>%
  summarize(mean_year = mean(year))

# Plot sampling distribution
ggplot(sample_means, aes(x = mean_year)) +
  geom_histogram(binwidth = 1, color = "white") +
  labs(
    x = expression(bar(x)), y = "Number of samples",
    title = "Sampling distribution of x_bar based 25 samples of size n = 50"
  )



cleanEx()
nameEx("pennies_resamples")
### * pennies_resamples

flush(stderr()); flush(stdout())

### Name: pennies_resamples
### Title: Bootstrap resamples of a sample of 50 pennies
### Aliases: pennies_resamples
### Keywords: datasets

### ** Examples

library(ggplot2)
library(dplyr)
bootstrap_sample_means <- pennies_resamples %>%
  group_by(name) %>%
  summarize(sample_mean = mean(year))

ggplot(bootstrap_sample_means, aes(x = sample_mean)) +
  geom_histogram(binwidth = 2.5) +
  labs(x = "sample mean year", title = "Bootstrap distribution of sample mean year")



cleanEx()
nameEx("pennies_sample")
### * pennies_sample

flush(stderr()); flush(stdout())

### Name: pennies_sample
### Title: A sample of 50 pennies
### Aliases: pennies_sample
### Keywords: datasets

### ** Examples

library(ggplot2)

ggplot(pennies_sample, aes(x = year)) +
  geom_histogram(binwidth = 5, boundary = 2000)



cleanEx()
nameEx("promotions")
### * promotions

flush(stderr()); flush(stdout())

### Name: promotions
### Title: Bank manager recommendations based on (binary) gender
### Aliases: promotions
### Keywords: datasets

### ** Examples

library(dplyr)
glimpse(promotions)



cleanEx()
nameEx("promotions_shuffled")
### * promotions_shuffled

flush(stderr()); flush(stdout())

### Name: promotions_shuffled
### Title: One permutation/shuffle of promotions
### Aliases: promotions_shuffled
### Keywords: datasets

### ** Examples

library(dplyr)
glimpse(promotions)
glimpse(promotions_shuffled)



cleanEx()
nameEx("tactile_prop_red")
### * tactile_prop_red

flush(stderr()); flush(stdout())

### Name: tactile_prop_red
### Title: Tactile sampling from a tub of balls
### Aliases: tactile_prop_red
### Keywords: datasets

### ** Examples

library(ggplot2)

# Plot sampling distributions
ggplot(tactile_prop_red, aes(x = prop_red)) +
  geom_histogram(binwidth = 0.025) +
  labs(
    x = expression(hat(p)), y = "Number of samples",
    title = "Sampling distribution of p_hat based 33 samples of size n = 50"
  )



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
