class Proc
  # Calls the proc with the specified locals
  # The last arg to call_with_locals must be a Hash
  #
  #   proc { |x| x + y }.call_with_locals(1, :y => 2) => 3
  def call_with_locals(*args)
    locals = args.pop
    unless Hash === locals
      raise "Expected Hash as last argument to call_with_locals"
    end

    klass = Class.new
    klass.send :define_method, :call, self
    meth = klass.instance_method :call
    klass.send :remove_method, :call
    locals.each do |k,v|
      klass.send(:define_method, k) { v }
    end
    meth.bind(klass.new).call(*args)
  end
end
