### Provided by Hacker Rank
class Person
  # instance variables
  def initialize(firstName, lastName, id)
    @firstName = firstName
    @lastName = lastName
    @id = id
  end

  # Print info about an instance of Person
  def printPerson()
    print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
  end
end

### Only this block below is my code
class Student < Person
  def initialize(firstName, lastName, id, scores)
    super(firstName, lastName, id)
    @scores = (scores.inject(:+))/numScores
  end

  def calculate()
    if @scores <= 100 && @scores >= 90
      letter_grade = "O"
    elsif @scores < 90 && @scores  >= 80
      letter_grade = "E"
    elsif @scores < 80 && @scores >= 70
      letter_grade = "A"
    elsif @scores < 70 && @scores >= 55
      letter_grade = "P"
    elsif @scores < 55 && @scores >= 40
      letter_grade = "D"
    else @scores < 40
      letter_grade = "T"
    end

    return letter_grade
  end
end

### Below code is provided by Hacker Rank

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)
