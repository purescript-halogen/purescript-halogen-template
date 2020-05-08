# Halogen Template

This is a template for starting a fresh project with the [Halogen](https://github.com/slamdata/purescript-halogen) library for writing declarative, type-safe user interfaces.

You can learn more about Halogen with these resources:

- The [Halogen documentation](https://github.com/purescript-halogen/purescript-halogen/tree/master/docs), which includes a quick start guide and a concepts reference.
- The [Learn Halogen](https://github.com/jordanmartinez/learn-halogen) learning repository.
- The [Real World Halogen](https://github.com/thomashoneyman/purescript-halogen-realworld) application and guide.
- The [API documentation](https://pursuit.purescript.org/packages/purescript-halogen) on Pursuit

You can chat with other Halogen users on the [PureScript Discourse](https://discourse.purescript.org), or join the [Functional Programming Slack](https://functionalprogramming.slack.com) ([invite link](https://fpchat-invite.herokuapp.com/)) in the `#purescript` and `#purescript-beginners` channels.

## Getting started

**Prerequisites:** This template assumes you already have Git and Node.js installed with `npm` somewhere on your path.

First, clone the repository and step into it:

```sh
git clone https://github.com/purescript-halogen/purescript-halogen-template.git halogen-project
cd halogen-project
```

Then, install the PureScript compiler, the [Spago](https://github.com/purescript/spago) package manager and build tool, and [Webpack](https://github.com/webpack/webpack) bundler locally:

```shell
npm install
```

This will automatically trigger Spago to install the PureScript library dependencies for this project.

## Building

You can now build the PureScript source code with:

```sh
# An alias for `spago build`
npm run build
```

You can produce a bundled JS file you can run in the browser with:

```sh
# An alias for `spago bundle-app --to dist/app.js`
npm run bundle
```

This deposits a bundled JS file named `app.js` in the `dist` directory. You can view your running Halogen app by opening the `dist/index.html` file.

You can also start a process which watches the source files and rebuilds any time they modified (:warning: You will need to refresh the page to see your changes in the `index.html` file):

```shell
# An alias for `spago bundle-app --watch --to dist/app.js`
npm run bundle:watch
```

Alternatively, if you use an editor that supports `purs ide` or if you are running [`pscid`](https://github.com/kRITZCREEK/pscid), then you can get near-instant builds of the app while you work:

```sh
npm run bundle:watch-fast
```

:warning: `purs ide` only rebuilds one module at a time, so sometimes the bundle will end up in an inconsistent state, resulting in runtime errors. This occurs when a change is made in one module that breaks other modules that depend on it. The solution is to run a full build when a change like this is made, as the compiler will force you to resolve those errors.
