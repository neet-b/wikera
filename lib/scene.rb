
Scene = Object.new
class << Scene
  attr :title

  def == title
    @title == title.to_sym
  end

  def change title
    @title = title.to_sym
  end

  def init
    change :home
  end

end

Scene.init

