/* jshint esnext:true, node:true */
'use strict';
var gulp = require('gulp');
var insert = require('gulp-insert');
var fs = require('fs');

gulp.task('default', () => {
	gulp.src('./index.js')
		.pipe(insert.wrap(fs.readFileSync('./umd.js'), '});'))
		.pipe(gulp.dest('dist'));
});
