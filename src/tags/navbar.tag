navbar
  .ui.secondary.vertical.menu
    a.item(href="#home" class="{active: page == 'home'}")
      i.home.icon
      | Home
    a.item(href="#dummy1" class="{active: page == 'dummy1'}")
      i.pie.chart.icon
      | Dummy Item 1
    a.item(href="#dummy2" class="{active: page == 'dummy2'}")
      i.photo.icon
      | Dummy Item 2

  script.
    var RiotControl = require('riotcontrol');

    RiotControl.on('route:change', (page) => {
      this.page = page || 'home';
      this.update();
    });

  style(scoped).
    /* override the menu width to be the width of the parent container */
    .ui.secondary.vertical.menu {
      width: auto;
    }
