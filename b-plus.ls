Bp-packages-manager.use 'bp-test-extension' 

if Meteor.is-client
  Template.hello.greeting = ->
    "欢迎进入b-plus的世界."

  Template.hello.events 'click input': ->
    console.log "You pressed the button" if console
  
if Meteor.is-server
  Meteor.startup ->  
 