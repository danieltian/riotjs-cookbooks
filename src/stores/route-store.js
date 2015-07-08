import riot from 'riot';

class RouteStore {
  constructor() {
    riot.observable(this);
  }
}

// this is a singleton
module.exports = new RouteStore();
