require_relative './article'

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    articles_for_magazine.map do |filtered_article|
      filtered_article.author
    end
  end

  def self.find_by_name(magazine_name)
    Magazine.all.find do |magazine|
      magazine.name == magazine_name
    end
  end

  def article_titles
    articles_for_magazine.map do |filtered_article|
      filtered_article.title
    end
  end

  def contributing_authors
    self.contributors.filter do |author|
      author.articles.count > 2
    end
  end

  private

  def articles_for_magazine
    Article.all.filter do |article|
      article.magazine == self
    end
  end
end
