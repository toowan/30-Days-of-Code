mealCost = gets.to_f
tipPercent = gets.to_f
taxPercent = gets.to_f

tip = mealCost * (tipPercent / 100)
tax = mealCost * (taxPercent / 100)

totalCost = (mealCost + tip + tax).round

print "The total meal cost is #{totalCost} dollars."
