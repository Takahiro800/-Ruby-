class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    #selfなしでnameメソッドを呼ぶ
    "Hello, I am #{name}"
  end

  def hi
    #self付きでnameメソッドを呼ぶ
    "Hi, I am #{self.name} "
  end

  def my_name
    #直接インスタンス変数の@nameにアクセスする
    "My name is #{@name} "
  end

  def rename_to_bob
    # selfなしでname=メソッドは呼べない
    name = 'Bob'
  end

  def rename_to_carol
    self.name = "Carol"
  end

  def rename_to_dave
    # 直接インスタンス変数を書き換える
    @name = 'Dave'
  end

end

user = User.new('Alice')
user.hello
user.hi
user.my_name