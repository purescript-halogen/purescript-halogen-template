# purescript-halogen-template

[![Dependency status](https://img.shields.io/librariesio/github/slamdata/purescript-halogen-template.svg)](https://libraries.io/github/slamdata/purescript-halogen-template)

This is a template for starting a fresh project using the [purescript-halogen](https://github.com/slamdata/purescript-halogen) library for declarative user interfaces.

## Prerequisites

This guide assumes you already have Git and Node.js installed with `npm` somewhere on your path.

In the PureScript ecosystem [Bower](http://bower.io/) is currently the most commonly used package manager and we'll be relying on it for this project, so if you don't already have it, you can install it like this:

``` shell
npm install --global bower
```

## Getting started

First clone the repo and step into it:

``` shell
git clone https://github.com/slamdata/purescript-halogen-template.git my-halogen-project
cd my-halogen-project
```

If you don't already have a global installation of the PureScript compiler and [Pulp](https://github.com/bodil/pulp) (or you want a local installation with the appropriate versions) you can run:

``` shell
npm install
```

Finally you'll need to install the PureScript library dependencies for this project with Bower:

``` shell
bower install
```

## Building

The project can now be built with:

``` shell
npm run build
```

This will build the PureScript source code and produce a bundled JS file as `dist/app.js`.

This is an alias for the Pulp command:

``` shell
pulp build --to dist/app.js
```

If you open `dist/index.html` you should now have a basic working Halogen app.

That's pretty much it. Have fun with Halogen!
