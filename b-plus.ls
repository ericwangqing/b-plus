if Meteor.isClient
  Template.hello.greeting = ->
    "欢迎进入b-plus的世界."

  Template.hello.events 'click input': ->
    console.log "You pressed the button" if console
  
if Meteor.isServer
  Meteor.startup -> 
 