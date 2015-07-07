app
  .ui.page.container

    navbar

    div#maincontent
      h1 This is some very long content here to test word wrapping This is some very long content here to test word wrapping This is some very long content here to test word wrapping
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here
      h1 Some Content Here

  style(scoped).
    .ui.page.container {
      display: flex;
      flex-direction: column;
      margin-top: 5rem;
    }

    navbar {
      margin-right: 3rem;
    }

    #maincontent {
      flex: 1;
    }

    @media (min-device-width: 768px) {
      .ui.page.container {
        flex-direction: row;
      }
    }
