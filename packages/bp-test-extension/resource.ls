@Bp-test-extension = class Bp-test-extension extends Bp-resource
  ->
    super ... 

  add-resource-list-handler: !->
    Template.bp-resource-list.files = ~>
      console.log "method extended!"
      @resource-fs.find {}, sort: upload-date: -1    
