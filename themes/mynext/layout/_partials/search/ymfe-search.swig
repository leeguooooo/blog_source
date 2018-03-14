<input type="text" class="navpage-search-input js-input" placeholder="搜索发现 lee">
<div class="m-search-help js-search-help">
    <span class="m-search-tip">你可以这样搜索：<br>
    搜索 API: "getLocation"<br>
    搜索 组件: "Dialog"<br>
    搜索 文档: "chunk"<br>
    搜索 博客: "移动 调试"<br>
    搜索 统计: "离线包版本"<br>
    搜索 发版记录: "QRN 2.4.0"<br>
    ......</span>
</div>
<div class="navpage-search-results" id="result">
</div>
<script>
    var dNavpageMain = $('.js-navpage-main');
    var dInput = $('.js-input');
    function getKeyWord() {
        return dInput.val().trim();
    }
    function doSearch(keyWord) {
        var keyWords = keyWord.toLowerCase().split(' ').filter(function(t) {
                return !!t;
            }),
            result = [];
        if (keyWord) {
            for (var i = 0, l = searchData.length - 1; i <= l; i++) {
                var item = searchData[i];
                if (keyWords.every(function(key) {
                        return item.title.toLowerCase().indexOf(key) > -1 || item.url.indexOf(key) > -1;
                    })) {
                    result.push(item);
                }
                if (result.length === 5) {
                    break;
                }
            }
        }
        if (result.length && result.length > 0) {
            var resultHtml = '';
            result.forEach((item) => {
                resultHtml += '<li><a href="' + item.url  + '"><p class="result-title">' + item.title + '</p><p class="result-url">' + item.url + '</p></a></li>'
            })
            $("#result").html('<ul>' + resultHtml + '</ul>');
        } else {
            $("#result").html('');
        }
    }
    var timeout;
    dInput.bind('input propertychange', function(e) {
        var keyWord = getKeyWord();
        if (timeout) {
            clearTimeout(timeout);
        }
        timeout = setTimeout(function() {
            timeout = null;
            doSearch(keyWord);
        }, 500);
    });
    dInput.focus(function() {
        dNavpageMain.addClass('inputFocus');
    });
    dInput.blur(function() {
        setTimeout(function() {
            dInput.val('');
            $("#result").html('');
            dNavpageMain.removeClass('inputFocus');
        }, 200);
    });
</script>
