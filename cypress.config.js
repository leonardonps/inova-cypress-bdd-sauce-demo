const { defineConfig } = require("cypress");
const cucumber = 

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      on("file:preprocessor", cucumber());
    },
  },
});
