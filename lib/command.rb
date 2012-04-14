
require './commandlist'

Kernel.send :define_method, :get_command do
  command_number= gets.to_i.pred
  command = command_list.keys[command_number]
  command_list[command].call
  puts ''
end

