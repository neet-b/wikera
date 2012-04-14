
class Charactor
  attr :name
  attr :hp, :max_hp, :mp, :max_mp, :gem, :mark

#debug
def initialize
  @max_hp, @max_mp = 1000, 1000
  recover
end

  def touched
    puts 'touched'
  end

  def recover
    @hp = @max_hp
    @mp = @max_mp
    puts 'recovered'
  end

  def self.load
    $charactors = [Charactor.new] * 3
    $target = $charactors.first
  end


end

Charactor.load

