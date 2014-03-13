# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class DiceSet
  def roll(throws)
    @values = []
    throws.times do
      @values << rand(6) + 1
    end
    @values
  end

  def values
    @values
  end
end

class Player

  def score(dice)
    score = 0
    counts = Hash.new(0)
    dice.each { |die| counts[die] += 1 }
    counts.each do |die,count|
      if count >= 3
        die == 1 ? score += 1000 : score += die * 100
        counts[die] -= 3
      end
      score += 100 * counts[die] if die == 1
      score += 50 * counts[die] if die == 5
    end
    score
  end

end

class Game

end

