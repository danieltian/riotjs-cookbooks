var riot = require('riot');

class RouteStore {
  constructor() {
    riot.observable(this);

    this.on('route:change', (page) => {
      this.currentPage = page || 'home';
      this.trigger('navigate', this.currentPage);
    });
  }
}

// this is a singleton
module.exports = new RouteStore();
