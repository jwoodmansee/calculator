@op_array = ['+', '-', '/', '*']
histroy = []
#Take user_input first number
def first_number
  puts 'What is your first number?'
  user_first_number = gets.strip.to_f
  return user_first_number
end

def operator
  puts 'What is your operator?'
  user_operator = gets.strip
  return user_operator
end

def second_number
  puts 'What is your second number?'
  user_second_number = gets.strip.to_f
  puts 'Doing Math:)...'
  return user_second_number
end


def operation(first_num, operand, second_num)
  if @op_array.include? operand
    case operand
      when '+'
        answer = first_num + second_num
      when '-' 
        answer = first_num - second_num
      when '/'
        if second_num == 0
          puts "Can't compute" 
          run_program
          exit
        else
          answer = first_num / second_num
        end
      when '*'
        answer = first_num * second_num
      else
        puts 'Invaild operator' 
      end  
    end 
  end  
end
  result(first_num, operand, second_num, answer)
  

def result(first, operand, second, answer)
  puts "The Answer of #{first} #{operand} #{second} is #{answer}"
end

history << "#{num_1} #{operand} #{num_2} #{operation} is #{answer}"

def show_history
  history.each do |formulas|
  puts formulas  
end    

def string_input
  puts "What math would you like done?"
  equation = gets.strip.slipt(' ')
  calculation()
end
def run_program
  num_1 = first_number
  operand = operator
  num_2 = second_number
  operation(num_1, operand, num_2)
end

run_program

# first_number

# if not show an error

#check for errors and other