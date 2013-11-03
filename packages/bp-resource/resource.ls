@Bp-resource = class Bp-resource 
  (collection)->
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

new Bp-resource 'bp-resources' .initial! 


# @Bp-resources = new Meteor.Collection 'bp-resources'
# @Bp-resources-fS = new CollectionFS 'bp-resources', autopublish: false
# if Meteor.is-client
#   Template.bp-resource-upload.events 'change .resource-uploader': (e) ->
#     files = e.target.files
#     for file in files
#       Bp-resources-fS.store-file file

#   Template.bp-resource-list.files = ->
#     Bp-resources-fS.find {}, sort: upload-date: -1