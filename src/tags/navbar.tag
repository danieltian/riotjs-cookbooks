navbar
  .ui.secondary.vertical.menu
    a.item(href="#home")
      i.home.icon
      | Home
    a.item(href="#dummy1")
      i.pie.chart.icon
      | Dummy Item 1
    a.item(href="#dummy2")
      i.photo.icon
      | Dummy Item 2

  style(scoped).
    /* override the menu width to be the width of the parent container */
    .ui.secondary.vertical.menu {
      width: auto;
    }
