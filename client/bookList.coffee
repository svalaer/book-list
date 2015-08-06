if (Meteor.isClient)
  Session.setDefault 'counter', 0

  Template.bookList.helpers counter: ->
    Session.get 'counter'

  Template.bookList.helpers books: ->
    Books.find()

  Template.bookList.events 'click button': ->
    Session.set 'counter', Session.get('counter') + 1

  Template.bookList.events 'submit .add-book': (event) ->
    event.preventDefault()
  # this prevents built-in form submission
    Meteor.call 'addBook',
      title: event.target.title.value
      author: event.target.author.value

if (Meteor.isServer)
  Meteor.startup ->
