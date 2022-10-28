# Please copy/paste all three classes into this file to submit your solution!

# Class Article
class Article
    attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
end

# Class Author
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def articles
        Article.all.filter do |article|
            article.author = self
        end
    end

    def magazines
        magazines = self.articles.map do |article|
            article.magazine
        end
        magazines.uniq
    end

    def add_article(magazine, title)
        Article.new(title, self, magazine)
    end

    def topic_areas
        self.magazines.map do |magazine|
        magazine.category
    end
    magazines.uniq
    end

end

# Class Magazine
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