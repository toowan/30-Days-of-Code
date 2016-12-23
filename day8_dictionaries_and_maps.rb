
num_of_names = gets.to_i
phonebook = {}

# Prompt input of name and phone number as a single string
(1..num_of_names).each do
  # Split string into items to store it in array
  input = gets.chomp.split(" ")   # "sam 99912222" => ["sam", "99912222"]
  # Set index[0] as the name and index[1] as the phone in the phonebook hash
  phonebook[input[0]] = input[1]  # {(sam => 99912222)}
end

# Check input on each line to see if it's in the hash
STDIN.each_line do |input|
  input.chomp!
  if phonebook.key?(input)
    puts "#{input}=#{phonebook[input]}"
  else
    puts "Not found"
  end
end
