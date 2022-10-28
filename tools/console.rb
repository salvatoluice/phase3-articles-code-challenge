require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
steven = Author.new("Steven CF")
jonah = Author.new("Yonah Stomachi Fishy")

gamer = Magazine.new("eFootball 23", "Football Simulator")
fps = Magazine.new("PUBG", "FPS")
fifa = Magazine.new("FIFA", "Football Arcade")
ruby = Magazine.new("Ruby", "OOP Language")

article_one= Article.new(steven, gamer, "lorem ipsum dolor sit amet, consectetuer adipiscing")
article_two = Article.new(steven, fps, "lorem ipsum dolor sit amet, consectetuer adipiscing")
article_three = Article.new(jonah, fifa, "lorem ipsum dolor sit amet, consectetuer adipiscing")
article_four = Article.new(steven, ruby, "lorem ipsum dolor sit amet, consectetuer adipiscing")
### DO NOT REMOVE THIS
binding.pry

0