class Question
  def initialize(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    operator = ['+', '-', '/', '*'].sample # grabs an operator at random
    op_word = case operator
              when '+'
                'plus'
              when '-'
                'minus'
              when '/'
                'divided by'
              when '*'
                'multiplied by'
              end
    puts "#{player.name}: What does #{num1} #{op_word} #{num2} equal?"
    answer = gets.chomp.to_i
    results = eval("#{num1}#{operator}#{num2}")
    if answer == results
      puts "Yes, #{player.name}! You're correct!"
    else
      puts "#{player.name}, seriously? No!"
      player.lives = player.lives - 1
    end
  end
end
