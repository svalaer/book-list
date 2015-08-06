Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY'

Meteor.methods addBook: (bookData) ->
  if @userId
    bookData.userID = @userId
    bookID = Books.insert(bookData)
    bookID