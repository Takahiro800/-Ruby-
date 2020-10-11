class User

  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end


  def hello
    # shuffled_nameはローカル変数
    # shuffled_name = @name.chars.shuffle.join
    puts "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

user = User.new('Alice')
user.name = 'Bob'
puts user.name