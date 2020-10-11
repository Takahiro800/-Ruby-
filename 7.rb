class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end

  def hello
    "Hello!"
  end
end


user = User.new('Alice', 20)
user.hello