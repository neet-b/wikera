
require './scene'

Kernel.send :define_method, :command_list do
  {
    :home => {
      :train => -> {
        Scene.change :training
        puts 'Bigining of the training'
      },
      :rest => -> {
        [Player, $target].each{|one| one.recover}
      },
      :quit => -> {
        exit
      }
    },
    :training => {
      :touch => -> {
        $target.touched
      },
      :quit => -> {
        Scene.change :home
        puts 'End of the trainig'
        puts 'Returned to home'
      }
    }
  }[Scene.title]
end
