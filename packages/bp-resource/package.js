Package.describe({
  summary: "B+ Resource模块"
});

Package.on_use(function(api, where){
  api.use(['coffee', 'collectionFS', 'minimongo', 'mongo-livedata', 'templating'], ['client', 'server']);

  api.add_files(['resource.js'], ['client', 'server']);

  api.add_files(['resource.html'], 'client');
});