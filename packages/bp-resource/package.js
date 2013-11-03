Package.describe({
  summary: "B+ Resource模块"
});

Package.on_use(function(api, where){
  api.use(['livescript', 'collectionFS', 'minimongo', 'mongo-livedata', 'templating'], ['client', 'server']);
  api.export && api.export('BpResource');
  // 注意！！ 下面的加载顺序很重要，要先加载模板，再加载脚本
  api.add_files(['resource.html'], 'client');
  api.add_files(['resource.ls'], ['client', 'server']);
});