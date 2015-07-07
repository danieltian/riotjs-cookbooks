navbar
  .ui.secondary.vertical.menu
    a.active.item
      i.home.icon
      | Home
    a.item
      i.pie.chart.icon
      | Dummy Item 1
    a.item
      i.photo.icon
      | Dummy Item 2

  style(scoped).
    .ui.secondary.vertical.menu {
      width: auto;
    }

    @media (min-device-width: 768px) {
      .ui.secondary.vertical.menu {
        width: 15rem;
      }
    }

