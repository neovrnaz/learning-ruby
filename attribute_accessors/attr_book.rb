class BookPart2
  attr_writer :title, :author, :pages
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

book = BookPart2.new('Harry Potter', 'JK Rowling', 400)
p book.title = 'Ruby'
