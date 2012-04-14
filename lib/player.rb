
require './charactor'

Player = Charactor.new
class << Player

  def act command
    self.send @command_list[command]
  end


end

