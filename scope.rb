$global_var = "This is a global variable"
CONSTANT = 3.1416 


class DummyClass  
  @@class_variable = "This is a class variable"


  def initialize(local_var = "this is my local var")
    @instance_var = local_var
  end

  def global_var
    $global_var
  end

  def global_var=(valor)
    $global_var = valor
  end

  def CONSTANT
    CONSTANT
  end

  # def CONSTANT=(valor)  no se puede esta funcion ya que una constante no se puede modificar
  #   CONSTANT = valor
  # end

  def class_variable
    @@class_variable
  end

  def class_variable=(valor)
    @@class_variable = valor
  end

  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end
  

  def return_my_local_var
    @instance_var
  end

end

dummy_class = DummyClass.new#("this is my local var")

puts dummy_class.return_my_local_var

p dummy_class.instance_var=("Bar")
p dummy_class.instance_var   =    "Baz"

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

puts dummy_1.class_variable
puts dummy_2.class_variable
dummy_1.class_variable = "New value for the class variable"

puts dummy_1.class_variable
puts dummy_2.class_variable

dummy_1 = DummyClass.new

puts dummy_1.global_var
dummy_1.global_var = "nuevo valor"
puts dummy_1.global_var

dummy_1 = DummyClass.new
puts dummy_1.CONSTANT
#dummy_1.CONSTANT = 8.45
puts dummy_1.CONSTANT
