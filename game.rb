class Game
  def initialize
    @players = {}
    puts 'Player 1! Enter your name!'
    @players['p1'] = Player.new(gets.chomp)
    puts 'Player 2! Your turn!'
    @players['p2'] = Player.new(gets.chomp)
    @turn = 'p2'
    ask_question
  end

  def change_player
    @turn = @turn == 'p1' ? 'p2' : 'p1'
  end

  def ask_question
    change_player
    Question.new(@players[@turn])
    "#{@players['p1'].name}: #{@players['p1'].lives_left} vs #{@players['p2'].name}: #{@players['p2'].lives_left}"
    if @players[@turn].lives == 0
      change_player
      puts "#{@players[@turn].name} wins with a score of #{@players[@turn].lives_left}"
      puts '----- GAME OVER -----'
    else
      puts '----- NEW TURN -----'
      ask_question
    end
  end
end
