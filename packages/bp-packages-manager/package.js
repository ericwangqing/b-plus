Package.describe({
  summary: "B+ 模块管理"
});

Package.on_use(function(api, where){
  api.use(['livescript'], ['client', 'server']);
  api.use(['handlebars', 'templating'], ['client']);
  // api.use(['underscore', 'spark', 'handlebars'], 'client');
  // 注意！！ 下面的加载顺序很重要，要先加载模板，再加载脚本
  api.add_files(['manager.ls'], ['client', 'server']);
});