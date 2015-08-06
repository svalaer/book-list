Meteor.publish 'books', ->
  Books.find userID: @userId