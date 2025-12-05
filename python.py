class Book():
    def __init__(self, author, name, year):
        self.author = author
        self.name= name
        self.eyar = year
    
    def get_book(self):
        return f"{self.name}, {self.author},{self.year}"
    
my_book = Book("yash amte",'java',2022)
print(my_book.author)
print(my_book.get_book())
