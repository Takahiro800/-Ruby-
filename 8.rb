# 第８章モジュールを理解する
require 'pry'

class Team
  COUNTRIES = ['Japan'.freeze, 'US'.freeze, 'India'.freeze].freeze
end

class Product
  def title
    log 'title is callded.'
    'A great movie'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called.'
    'Alice'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end
product = Product.new
product.title

user = User.new
user.name