function template(locals) {
var jade_debug = [ new jade.DebugItem( 1, "routing.jade" ) ];
try {
var buf = [];
var jade_mixins = {};
var jade_interp;

jade_debug.unshift(new jade.DebugItem( 0, "routing.jade" ));
jade_debug.unshift(new jade.DebugItem( 1, "routing.jade" ));
buf.push("<h1 id=\"test\">Test</h1>\n<p><a href=\"http://google.com\">Google</a></p>\n<ul>\n<li>Item 1</li>\n<li>Item 2</li>\n<li>Item 3</li>\n</ul>\n");
jade_debug.shift();
jade_debug.shift();;return buf.join("");
} catch (err) {
  jade.rethrow(err, jade_debug[0].filename, jade_debug[0].lineno, ":markdown\r\n  # Test\r\n  [Google](http://google.com)\r\n  * Item 1\r\n  * Item 2\r\n  * Item 3\r\n");
}
}