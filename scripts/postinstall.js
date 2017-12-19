var fs = require('fs');

require('globby').sync('**/node_modules/hexo-util/lib/highlight.js').forEach(function(file) {
    var content = fs.readFileSync(file, 'UTF-8');
    if (content.indexOf("if (lang === 'plain'){") > -1) {
        fs.writeFileSync(file, content.replace("if (lang === 'plain'){", "if (lang === 'plain' || lang === 'flow'){"), 'UTF-8');
    } else {
        if (process.argv.indexOf('--verbos') > -1) {
            console.log('X 改写 highlight 代码失败, flowchart 识别可能出问题: ' + file);
        }
    }
});
