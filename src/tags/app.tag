app
  .ui.page.container
    navbar
    div#main-content
      //- default template if URL is blank
      home

  script.
    const RiotControl = require('riotcontrol');

    RiotControl.on('route:change', (resource) => {
      resource = resource || 'home';
      riot.mount('#main-content', resource);
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
