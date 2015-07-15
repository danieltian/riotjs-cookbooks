var riot = require('riot');
var RiotControl = require('riotcontrol');

// require() all files in the tag folder
// NOTE: need to do this, or else mounting the app tag will not mount the child tags
// TODO: is there a way to do this through ES6 imports?
var context = require.context('./tags/', true, /\.tag$/);
context.keys().forEach(key => {
  context(key);
});

var routeStore = require('./stores/route-store');
RiotControl.addStore(routeStore);

// mount the app tag, which is the root tag for the app
// NOTE: this will mount all child tags as well
riot.mount('app');

var processRoute = (page) => {
  console.info('route changed to', page);
  RiotControl.trigger('route:change', page);
};

// hook up the callback so that any hash changes on the URL will run processRoute()
riot.route(processRoute);
// run the callback on initial page load, the previous callback isn't triggered on initial page load
riot.route.exec(processRoute);
