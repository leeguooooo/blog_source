<!-- custom analytics part create by xiamo -->
<script src="https://cdn1.lncld.net/static/js/av-core-mini-0.6.1.js"></script>
<script>AV.initialize("{{theme.leancloud_visitors.app_id}}", "{{theme.leancloud_visitors.app_key}}");</script>
<script>
function getCookie(c_name)
	{
	if (document.cookie.length>0)
		{
		c_start=document.cookie.indexOf(c_name + "=")
		if (c_start!=-1)
			{
			c_start=c_start + c_name.length+1
			c_end=document.cookie.indexOf(";",c_start)
			if (c_end==-1) c_end=document.cookie.length
			return unescape(document.cookie.substring(c_start,c_end))
			}
		}
	return ""
	}

function showTime(Counter) {
	var query = new AV.Query(Counter);
	$(".leancloud_visitors").each(function() {
		var url = $(this).attr("id").trim();
		query.equalTo("url", url);
		query.find({
			success: function(results) {
				if (results.length == 0) {
					var content = $(document.getElementById(url)).html() + '0';
					$(document.getElementById(url)).html(content);
					return;
				}
				for (var i = 0; i < results.length; i++) {
					var object = results[i];
					var content = $(document.getElementById(url)).html() + object.get('time');
					$(document.getElementById(url)).html(content);
				}
			},
			error: function(object, error) {
				console.log("Error: " + error.code + " " + error.message);
			}
		});
	});
}
function addCount(Counter) {

	var Counter = AV.Object.extend("Counter");
	url = $(".leancloud_visitors").attr('id').trim();
	title = $(".leancloud_visitors").attr('data-flag-title').trim();
	var query = new AV.Query(Counter);
	query.equalTo("url", url);

	//同一cookie只能累加一次阅读量
	if(getCookie(url)){
		var Counter = AV.Object.extend("Counter");
		showTime(Counter);
		return;
	}
	var exdate=new Date()
	exdate.setDate(exdate.getDate()+3650)
	document.cookie=url+ "=" +escape("test")+ ";expires="+exdate.toGMTString();

	query.find({
		success: function(results) {
			if (results.length > 0) {
				var counter = results[0];
				counter.fetchWhenSave(true);
				counter.increment("time");
				counter.save(null, {
					success: function(counter) {
						var content = $(document.getElementById(url)).html() + counter.get('time');
						$(document.getElementById(url)).html(content);
					},
					error: function(counter, error) {
						console.log('Failed to save Visitor num, with error message: ' + error.message);
					}
				});
			} else {
				var newcounter = new Counter();
				newcounter.set("title", title);
				newcounter.set("url", url);
				newcounter.set("time", 1);
				newcounter.save(null, {
					success: function(newcounter) {
					    console.log("newcounter.get('time')="+newcounter.get('time'));
						var content = $(document.getElementById(url)).html() + newcounter.get('time');
						$(document.getElementById(url)).html(content);
					},
					error: function(newcounter, error) {
						console.log('Failed to create');
					}
				});
			}
		},
		error: function(error) {
			console.log('Error:' + error.code + " " + error.message);
		}
	});
}
$(function() {
	var Counter = AV.Object.extend("Counter");
	if ($('.leancloud_visitors').length == 1) {
		addCount(Counter);
	} else if ($('.post-title-link').length > 1) {
		showTime(Counter);
	}
});
</script>
