# Probabilities and Distrubutions Movie Pass Example

# Data collected by MoviePass shows that, on each day, each subscriber has a 10% chance of watching one movie 
# and 90% chance of not watching any movies. Whether a subscriber watches movies or not on any given day 
# is not affected by the watching patterns in the past.(independent binomial situation)
------------------------------------------------------------------------------------
  # Question 1: What is the probability a subscriber watches exactly one movie over a month?
  
  # each month = 30 days
  # Probability = 1 
  # x = numbers of movies watched in a month
  # X ~ B(30, 0.1), P(X=1)
  dbinom(1, 30, 0.10)

# answer 0.1413039 
------------------------------------------------------------------------------------
  # Question 2
  # What is the expected monthly profit/loss from each subscriber? 
  9.95 - 9 * 30 * 0.1 

#answer = -17.05 
------------------------------------------------------------------------------------
  # Question 3 
  # What is the standard deviation of the monthly profit/loss from each subscriber?
  
  # variance formula of a variable is given by sum / a ( a - mean x )^ 2 * P ( x = a )
  
  # variance of 9.95 - 9x 
  # var[9.95 - 9x] = var[9x] = 9^2 * var[x] = 9^2 * n * p * (1-p)
  var = 9^2 * 30 * 0.1 * (1 - 0.1) 
  # 218.7 
  sqrt(218.7)
  
  # answer 14.78851
  ------------------------------------------------------------------------------------
    # Question 4 
    # What is the probability of earning a positive profit from a subscriber over a month?
    
    # P(X < = 1) = P (X=0) + P(X=1)
    # dbinom(0, 30, 0.1) + dbinom(0, 30, 0.1)
    
    sum(dbinom(0:1, 30, 0.1)) 
  # OR 
  pbinom(1, 30, 0.1) 
  
  # answer 0.1836
  ------------------------------------------------------------------------------------
    # Question 5
    # Further analysis of MoviePass data shows that 20% of its subscribers are die-hard 
    # moviegoers, who have a 20% chance of watching a movie on each day. The rest of its subscribers 
    # only watch a movie on each day with a 7.5% chance. What is the probability that a die-hard moviegoer watches
    # at least five movies in a month?
    
    # Y ~ B(30, 0.2), P(Y>=5)
    sum(dbinom(5:30, 30, 0.2)) 
  # OR
  1 - pbinom(4, 30, 0.2) 
  
  # answer 0.7447667
  ------------------------------------------------------------------------------------
    # Question 6
    # What is the expected profit/loss from a subscriber who is a die-hard moviegoer?
    
    values = 9.99 - 0:2 * 12 # we love her
  prob = c(dbinom(0:2, 30, 0.08),
           pbinom(2, 30, 0.08, lower.tail = F))
  
  mu_z = sum(values * prob) 
  
  # answer -16.54
  ------------------------------------------------------------------------------------
    # Question 7
    # Under the new terms of service, what is the standard deviation of the monthly 
    # profit/loss from a subscriber who is a die-hard moviegoer?
    var = sum ( )
  Var = sum( ( values - mu_z)^ 2 * prob)
  # standard deviation 
  s = sqrt(Var)
  
  
  qnorm(0.975)
  qnorm(0.025)
  n = 45
  sigma = 1.1 
  x_bar = 12.4
  
  test1 = ztest(rewards$'Operating.Margin.Percent', conf.level = 0.95)
  test1$conf.int
  l = length(unique(rewards == 'Industry..Sector' )
             data1 = uber$Hourly.Pay[uber$City == "Chicago" & uber$Gender == "Male"]
             
             x_bar = mean(data1)
             s = sd(data1)
             n = length(data1)
             qt(0.975, df = n-1)* s / sqrt (n)
             
             
             
             upper_limit = x_bar + qnorm(0.975) * sigma / sqrt(n)
             
             lower_limit = x_bar - qnorm(0.975) * sigma / sqrt(n)
             
             # answer 2.52 
             ------------------------------------------------------------------------------------
               # Question 8
               # Suppose a subscriber is not a die-hard moviegoer. Under the new terms of service, what is the 
               # probability that s/he needs to pay for movie tickets
               # out of pocket at least once in the next year, if s/he subscribes to MoviePass?
               
               # Q ~ B(30, 0.075), P(Q>=4)
               
               p = pbinom(3, 30, 0.075, lower.tail = F)
             
             1-dbinom(0, 12, p) 
             
             # 0.91 
             ---------------------------------------------------------------------------------------
               # Question 9
               # Under the new terms of service, what is the probability that a subscriber who is a die-hard moviegoer 
               # needs to pay for movie tickets out of pocket in 
               # at least ten months in the next year, if s/he subscribes to MoviePass?
               
               # Y ~ B(12, p)
               # P(Y>=10) = 1 - P (Y <= 9 )
               p = pbinom(3, 30, 0.2, lower.tail = F)
             1 - pbinom(9, 12, p) 
             
             # answer 0.83