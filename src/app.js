import riot from 'riot';
import RiotControl from 'riotcontrol';

// require() all files in the tag folder
// NOTE: need to do this, or else mounting the app tag will not mount the child tags
// TODO: is there a way to do this through ES6 imports?
const context = require.context('./tags');
context.keys().forEach(key => {
  context(key);
});

var routeStore = require('./stores/route-store');
RiotControl.addStore(routeStore);

// mount the app tag, which is the root tag for the app
// NOTE: this will mount all child tags as well
riot.mount('app');

var processRoute = (resource) => {
  RiotControl.trigger('route:change', resource);
};

// hook up the callback so that any hash changes on the URL will run processRoute()
riot.route(processRoute);
// run the callback on initial page load, the previous callback isn't triggered on page load
riot.route.exec(processRoute);
