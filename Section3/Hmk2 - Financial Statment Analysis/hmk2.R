# Scenario: You are a data scientist working for a consulting firm. One of your
# colleagues from the Auditing department has asked you to help them assess the
# financial statement of organisation X.

# You have been supplied with two vectors of data : 
# 1) Monthly revenue
# 2) Monthly expenses
# for the financial year in question. Your task is to calculate the following financial metrics.

# 1) Profit for each month
# 2) Profit after tax for each month (tax rate is 30%)
# 3) Profit margin for each month - equals to profit after tax divided by revenue
# 4) Good months - where the profit after tax was greater than the mean for the year
# 5) Bad months - where the profit after tax was lesser than the mean for the year
# 6) Best month - where the profit after tax was max for the year
# 7) Worst month - where the profit after tax was min for the year

# All results need to be presented as vectors

# Results for dollar values need to be calculated with $0.01 precision, but need to presented in Units of $1,000 
# with no decimal points

# Results for the profit margin ratio need to be presented in units of % with no decimal points

# Note : Your colleague has warned you that it is okay for tax for any given month to be negative
# (in accounting terms, negative tax translates into a deferred tax asset)

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

