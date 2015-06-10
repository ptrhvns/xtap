require 'xtap/version'

class Object
  # Yields self to its block, and then returns the value of calling its block.
  # The purpose of this method is similar to Object#tap, but is used to
  # continue a method chain after transforming a self into something new.
  #
  # def transform(s)
  #   'bar'
  # end
  #
  # 'foo'
  #   .xtap { |s| transform(s) }
  #   .gsub(/bar/, 'baz')
  def xtap
    yield self
  end
end
