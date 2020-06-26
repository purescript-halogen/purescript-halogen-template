# Halogen Template

### Quick Start
```sh
git clone https://github.com/purescript-halogen/purescript-halogen-template.git halogen-project
cd halogen-project
npm install -g purescript spago parcel
npm run build
npm run serve
```

### Introduction

This is a template for starting a fresh project with the [Halogen](https://github.com/purescript-halogen/purescript-halogen) library for writing declarative, type-safe user interfaces.

You can learn more about Halogen with these resources:

- The [Halogen documentation](https://github.com/purescript-halogen/purescript-halogen/tree/master/docs), which includes a quick start guide and a concepts reference.
- The [Learn Halogen](https://github.com/jordanmartinez/learn-halogen) learning repository.
- The [Real World Halogen](https://github.com/thomashoneyman/purescript-halogen-realworld) application and guide. Note that the published article is written for the older halogen v4, but the code and comments cover the current halogen v5.
- The [API documentation](https://pursuit.purescript.org/packages/purescript-halogen) on Pursuit

You can chat with other Halogen users on the [PureScript Discourse](https://discourse.purescript.org), or join the [Functional Programming Slack](https://functionalprogramming.slack.com) ([invite link](https://fpchat-invite.herokuapp.com/)) in the `#purescript` and `#purescript-beginners` channels.

If you notice any problems with the below setup instructions, or have suggestions on how to make the new-user experience any smoother, please create an issue or pull-request.

Compatible with PureScript compiler 13.x

### Initial Setup

**Prerequisites:** This template assumes you already have Git and Node.js installed with `npm` somewhere on your path.

First, clone the repository and step into it:

```sh
git clone https://github.com/purescript-halogen/purescript-halogen-template.git halogen-project
cd halogen-project
```

Then, install the PureScript compiler, the [Spago](https://github.com/purescript/spago) package manager and build tool, and the [Parcel](https://github.com/parcel-bundler/parcel) bundler globally:

```sh
npm install -g purescript spago parcel
```

If you'd prefer to install tools on a per-project basis (rather than globally), you may run `npm install` instead. See [this guide](https://github.com/purescript-templates/docs/blob/master/versioned-toolchain.md) for more information on configuring a local toolchain.


### Building

You can now build the PureScript source code with:

```sh
# An alias for `spago build`
npm run build
```

### Launching the App

You can launch your app in the browser with:

```sh
# An alias for `parcel dev/index.html --out-dir dev-dist --open`
npm run serve
```

### Development Cycle

If you're using an [editor](https://github.com/purescript/documentation/blob/master/ecosystem/Editor-and-tool-support.md#editors) that supports [`purs ide`](https://github.com/purescript/purescript/tree/master/psc-ide) or are running [`pscid`](https://github.com/kRITZCREEK/pscid), you simply need to keep the previous `npm run serve` command running in a terminal. Any save to a file will trigger an incremental recompilation, rebundle, and web page refresh, so you can immediately see your changes.

If your workflow does not support automatic recompilation, or if you add, remove, or modify module names, then you will need to manually re-run `npm run build`.

:warning: `purs ide` only rebuilds one module at a time, so sometimes the bundle will end up in an inconsistent state, resulting in runtime errors. This occurs when a change is made in one module that breaks other modules that depend on it. The solution is to run a full build (`npm run build`) when a change like this is made, as the compiler will force you to resolve those errors.

### Production

When you are ready to create a minified bundle for deployment, run the following command:
```sh
npm run build-prod
```

Parcel output appears in the `./dist/` directory.

You can test the production output locally with a tool like [`http-server`](https://github.com/http-party/http-server#installation). It seems that `parcel` should also be able to accomplish this, but it unfortunately will only serve development builds locally.
```sh
npm install -g http-server
http-server dist -o
```

If everything looks good, you can then upload the contents of `dist` to your preferred static hosting service.
