# Enter your code here. Read input from STDIN. Print output to STDOUT

actual_date = gets.split(" ").map(&:to_i)
expected_date = gets.split(" ").map(&:to_i)


def late_fee(actual_date, expected_date)
	actual_day = actual_date[0]
	actual_month = actual_date[1]
	actual_year = actual_date[2]

	expected_day = expected_date[0]
	expected_month = expected_date[1]
	expected_year = expected_date[2]

	year_diff = actual_year - expected_year
	month_diff = actual_month - expected_month
	day_diff = actual_day - expected_day

	# If returned after expected year
	if year_diff > 0
		fee = 10000
	# If returned within same month and year
	elsif actual_month == expected_month && actual_year == expected_year
		fee = 15 * (day_diff)
	# if returned after due month but still within same year
	elsif actual_month > expected_month && actual_year == expected_year
		fee = 500 * (month_diff)
	else
		fee = 0
	end

	puts fee
end

late_fee(actual_date, expected_date)


