app
  .ui.page.container
    navbar
    div#main-content

  script.
    var RiotControl = require('riotcontrol');

    RiotControl.on('navigate', (page) => {
      riot.mount('#main-content', page);
    });

  style(scoped).
    .ui.page.container {
      display: flex;
      flex-direction: column;
      margin-top: 5rem;
    }

    navbar {
      margin-right: 3rem;
    }

    #main-content {
      flex: 1;
    }

    /* desktop styling */
    @media (min-device-width: 768px) {
      .ui.page.container {
        flex-direction: row;
      }

      navbar {
        width: 15rem;
      }
    }
