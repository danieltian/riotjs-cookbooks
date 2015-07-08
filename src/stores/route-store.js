import riot from 'riot';

class RouteStore {
  constructor() {
    riot.observable(this);
  }
}

module.exports = new RouteStore();
