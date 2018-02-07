if(module.hot) {
  module.hot.accept(function () {
    console.log('hot module accepted');
    Array.from(document.querySelectorAll('body > div')).map(x => x.remove());
    console.log('deleted old entries');
    require("./output/Main").rerunUI(document.body)();
  });

  require("./output/Main").main();
  console.log('started in hot reloading mode');
} else {
  require("./output/Main").main();
  console.log('started in normal mode');
}
