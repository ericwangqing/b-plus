@Resources = new Meteor.Collection 'resources'
@ResourcesFS = new CollectionFS 'resources', autopublish: false
if Meteor.isClient
  Template.bp_fileUpload.events
    'change .fileUploader': (e) ->
      files = e.target.files
      for file in files
        ResourcesFS.storeFile file

  Template.bp_fileList.files = ->
    ResourcesFS.find {}, sort: uploadDate: -1
