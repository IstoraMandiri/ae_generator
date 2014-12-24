// General helpers for working with JSX

var thisFile = new File($.fileName);
var basePath = thisFile.path;
var inputPath = basePath + "/../input/"
var outputPath = basePath + "/../output/"
var templatesPath = basePath + "/../ae_templates/"

var console = {
  log: function() {
    var arg, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = arguments.length; _i < _len; _i++) {
      arg = arguments[_i];
      _results.push($.writeln(arg));
    }
    return _results;
  },
  dir: function(obj) {
    var key, val, _results;
    _results = [];
    for (key in obj) {
      val = obj[key];
      $.write(key);
      $.write(" : ");
      $.write(val);
      _results.push($.write("\n"));
    }
    return _results;
  }
};

// Identify template comps
var getTemplates = function() {
  var comps = {};
  for (var i = 1; i < app.project.items.length + 1; i++) {
    var thisItem = app.project.item(i);
    if (thisItem.name.indexOf('template_') === 0){
      comps[thisItem.name.replace('template_','')] = thisItem;
    }
  };
  return comps;
}