function execute(target, count) {
  var targetModule = require('./script/' + target)
  var func = targetModule.main
  var start = process.hrtime()
  for(var i = 0; i < count; i++) {
    func()
  }
  var end = process.hrtime(start)
  return end[1] / 1e9 + end[0]
}

var count = parseInt(process.argv[2])
var targetList = process.argv.slice(3)
var blank = execute('blank', count)
for(var i in targetList) {
  var time = execute(targetList[i], count) - blank
  console.log('# ' + targetList[i])
  console.log('## ' + time)
}
