root = exports ? this
root.Books = new (Meteor.Collection)('books')

Meteor.methods addBook: (bookData) ->
  bookID = Books.insert(bookData)
  bookID