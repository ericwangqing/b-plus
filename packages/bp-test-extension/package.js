Package.describe({
  summary: "测试B+的模块扩展机制"
});

Package.on_use(function(api, where){
  api.use(['livescript', 'collectionFS', 'minimongo', 'mongo-livedata', 'templating', 'bp-resource'], ['client', 'server']);
  // api.export && api.export('BpTestExtension');
  api.add_files(['resource.html'], 'client');
  api.add_files(['resource.ls'], ['client', 'server']);
});