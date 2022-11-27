# Probabilities and Distrubutions Brokerage Firm Example

# A brokerage firm is interested in studying the trading volume of its retail investors.
# The number of trades per day for individual retail investors follows the following distribution:
# Number of Trades -> Probability
#0 -> 0.7
#1 -> 0.15
#2 -> 0.08
#3 -> 0.05
#4 -> 0.02
# The probability of more than 4 trades in a day is very small and therefore ignored in the analysis.
# Trading activities on different days are independent. The trading fee is $7 per trade.
# Assume the stock exchanges open for trading for 20 days in each month.
-----------------------------------------------------------
  # 1. What is the probability a retail investor does not trade in a month?
  
  # start with:  Probability(Trading Day) = 1 - 0.7 = 0.3
  dbinom(0, 20, .3) = 0.0008
  
  ---------------------------------------------------------------------------------
    # 2. What is the probability a retail investor trades in 10 or more days in a month?
    
    1 - pbinom(9, 20, .3) 
  # ANSWER 0.048
  
  ---------------------------------------------------------------------------
    # 3. What is the average monthly trading fee for each retail investor?
    p_x = c(0.7, 0.15, 0.08, 0.05, 0.02) # distribution of X 
    x_values = c(0, 1, 2, 3, 4) # possible values
    mu_x = sum(p_x * x_values) # expected value
    var_x = sum(p_x * (x_values - mu_x)^2) # variance 
    sigma_x => sqrt(var_x) # standard deviation.
    mu_x
    ## 0.54 MEAN
    var_x
    ##  0.9484 VAR
    sigma_x
    ## 0.9738583 SD
    
    7 * mu_x * 20
    # 75.6 per month
    -------------------------------------------------------------------------------------
      #4. 
      p_x = c(0.7, 0.15, 0.08, 0.05, 0.02) # distribution of X 
    x_values = c(0, 1, 2, 3, 4) # possible values
    mu_x = sum(p_x * x_values) # expected value
    var_x = sum(p_x * (x_values - mu_x)^2) # variance 
    sigma_x = sqrt(var_x) # standard deviation.
    mu_x
    ## 0.54 MEAN
    var_x
    ##  0.9484 VAR
    sigma_x
    ## 0.9738583 SD
    
    pbinom(20, 75.6, )
    ((7^2) * 100 * .3 * .7)
    
    # From NitroFood
    x <- c(0, 1, 2, 3, 4)
    prob <- c(0.7,0.15,0.08,0.05,0.02)
    mu_x = crossprod(x, prob)
    mu_x = sum(x * prob)  # alternative method
    mu_x
    
    # Standard Deviation (modeled from NitroFood)
    sigma_x = sqrt(x - 75.6), prob))
sigma_x 
--------------------------------------------------------------------------------------------------------
  # [Brand Recall] Do violent movies make for more effective advertising, in terms of brand recall?
  # To test this notion, a researcher showed the same 60 second commercial in a violent movie and a non-violent movie.
  # At the end of the movie, viewers of both movies were asked if they could recall the brand name. Of all the viewers
  # involved in the experiment, 40% remembered the brand name. Also, 30% of all viewers watched the violent movie
  # and 45% among them remembered the brand name.
  --------------------------------------------------------------------------------------
  # 7. Assume a randomly selected viewer watched the violent movie. What is the probability s/he remembers the brand name?
  # P( brand name | Violent ) = P( Brand Name and Violent )  /  P( Violent )
  
  (0.45 * 0.3) / 0.3 
# ANSWER 0.45
--------------------------------------------------------------------------
  # 8. Suppose a sample of 8 viewers is randomly selected. What is the probability that 5 or more remember the brand name?
  1 - pbinom(4, 8, 0.4) 
Answer =  0.17

---------------------------------------------------------------------------------------------------
  # 9. Suppose that a sample of 8 viewers of the violent movie is selected.  What is the probability that AT MOST 3 people remember the brand name? 
  pbinom(3, 8, 0.45)
# Answer = 0.48 [R]

# 10 Assume that a randomly chosen viewer watched the non-violent movie. What is the probability that s/he remembers the brand name?

= 0.265 / 0.7  
= 0.38

