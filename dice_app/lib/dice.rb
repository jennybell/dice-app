class DiceApp

  attr_reader :rolls

  def initialize  
    @rolls = []
  end 

  def roll(number_of_dice)
   number_of_dice.times do 
    @rolls << (1..6).to_a.sample
    puts @rolls
   end 
  end  

  def total
    @rolls.inject(:+)
  end

end 