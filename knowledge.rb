class Object
  def attribute(name, value = nil, &block)
      
       #sets
      define_method ("#{name}=") do |value|
        instance_variable_set ("@#{name}", value)
      end
      
      #get
      define_method ("#{name}") do 
        instance_variable_get "@#{name}" 
      end
      
      #query
      defined_method ("#{name}?") do
        instance_eval("#{name}?").nil?
      end
  end
end