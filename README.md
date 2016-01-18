# purescript-halogen-template

This is a template for starting a fresh project using the [purescript-halogen](https://github.com/slamdata/purescript-halogen) library for declarative user interfaces.

## Prerequisites

This guide assumes you already have Git and Node.js installed with `npm` somewhere on your path.

In the PureScript ecosystem [Bower](http://bower.io/) is the most commonly used package manager and we'll be relying on it for this project, so if you don't already have it, you can install it like this:

``` shell
npm install --global bower
```

## Getting started

First clone the repo and step into it:

``` shell
git clone https://github.com/slamdata/purescript-halogen-template.git my-halogen-project
cd my-halogen-project
```

If you already have a global installation of the PureScript compiler and [Pulp](https://github.com/bodil/pulp), you can run:

``` shell
npm install --production
```

If you want to install a local copy of the PureScript compiler and Pulp then just run the usual:

``` shell
npm install
```

`npm install` is required for Halogen due to its dependency on `virtual-dom`. A postinstall script should have installed the remaining Bower dependencies.

## Building

The project can now be built with:

``` shell
npm run build
```

This will build the PureScript source code, run Browserify on the output, and produce a bundled JS file with `virtual-dom` and the PureScript-compiled JS as `dist/app.js`.

This is an alias for the Pulp command:

``` shell
pulp browserify --to dist/app.js
```

If you open `dist/index.html` you should now have a basic working Halogen app. 

That's pretty much it. Have fun with Halogen!
