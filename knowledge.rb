class Object
  def attribute(name, value = nil, &block)

      
      #sets
      define_method("#{name}=") do |value|
        instance_variable_set "@#{name}", value
      end
      
      #get
      define_method("#{name}") do 
        if instance_variable_defined? "@#{name}"
          instance_variable_get "@#{name}"
        else 
          value 
        end
      end
      
      #query
      #define_method("#{name}?") do
       # !instance_eval("#{name}").nil?
      #end

      define_method("#{name}?") do
        !send(name).nil?
      end
  end
end