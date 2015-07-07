const riot = require('riot');

// require() all files in the tag folder
const context = require.context('./tags');
context.keys().forEach(key => {
  context(key);
});

riot.mount('app');
