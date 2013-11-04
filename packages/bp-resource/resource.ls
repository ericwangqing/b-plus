@Bp-resource = class Bp-resource 
  ->
    collection = arguments[0] or 'bp-resources'
  # (collection)->
    @resource = new Meteor.Collection collection
    @resource-fs = new CollectionFS collection, autopublish: false

  initial: !->
    if Meteor.is-client
      @add-resource-upload-handler!
      @add-resource-list-handler!

  add-resource-upload-handler: !->
    Template.bp-resource-upload.events 'change .resource-uploader': (e) ~>
      files = e.target.files
      for file in files
        @resource-fs.store-file file

  add-resource-list-handler: !->
    Template.bp-resource-list.files = ~>
      @resource-fs.find {}, sort: upload-date: -1    
