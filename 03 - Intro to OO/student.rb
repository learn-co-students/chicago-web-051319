class Student

  def initialize(args)
    @name = args[:name]
  end

  def my_greeting
    puts "hello i'm #{self.name}"
  end

  def name=(new_name)
    @name = new_name
  end

  def huh
    self.name = "Duke NEWNAME!!!"
  end

  protected

  attr_reader :name

end

duke = Student.new(name: "duke", age: 33)
# p duke.my_greeting
# p duke.send(:name)

p duke.huh

p duke
duke.my_greeting
