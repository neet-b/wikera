#-*- coding:utf-8 -*-

require './commandlist'
require './eng2jpn'

Menu = Object.new
class << Menu

  def display
    num = command_list.count
    commands = command_list.keys.map{|k| ENG2JPN[k]}.each
    (1..num).each do |n|
      puts "#{n}:#{commands.next}" 
    end
  end

end
