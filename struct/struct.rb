# Structs are meant to be use to make assignments of
# a few attributes more convenient

Player = Struct.new(:score, :time_played) do
  def print_score_and_time_played
    puts "#{score}, #{time_played}"
  end
end

player = Player.new(324, "23 hours")
player.each_pair do |score, time_played|
  puts "#{score} - #{time_played}"
end
