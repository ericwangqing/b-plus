if Meteor.isClient
  Template.hello.greeting = ->
    "欢迎进入b-plus的世界."

  Template.hello.events 
    'click input': ->
        console.log "You pressed the button" if console
  
  Template.bp_fileUpload.events
    'change .fileUploader': (e) ->
      files = e.target.files
      for file in files
        ResourcesFS.storeFile file

  Template.bp_fileList.files = ->
    ResourcesFS.find {}, sort: uploadDate: -1

if Meteor.isServer
  Meteor.startup ->
