# is-this-local [![Build Status](https://travis-ci.org/Gipphe/is-this-local.svg?branch=master)](https://travis-ci.org/Gipphe/is-this-local)

> Predicate for whether the current document location is localhost


## Install

```
$ npm install --save is-this-local
```
Browser only. Chiefly meant to be used with [Browserify](http://browserify.org/).


## Usage

```js
// if current page host is a loopback address

var isLocal = require('is-this-local');
//=> true


// is current page host is not a loopback address

var isLocal = require('is-this-local');
//=> false
```


## License

MIT © [Victor Nascimento Bakke](http://giphtbase.org)
