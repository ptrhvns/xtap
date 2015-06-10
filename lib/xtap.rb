require 'xtap/version'

class Object
  def xtap
    yield self
  end
end
