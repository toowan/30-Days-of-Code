#!/bin/ruby

n = gets.strip.to_i
gmail_users = []

for i in (0..n-1)
    first_name, email_id = gets.strip.split(' ')
	if (/[a-z]/).match(first_name) && (/^[^@]+@gmail/).match(email_id)
		gmail_users << first_name
	end
end


sorted_names = gmail_users.sort
sorted_names.each {|name| puts name}


