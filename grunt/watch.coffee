module.exports =
	options:
		spawn: true
		event: 'all'
		livereload: true
	gruntfile:
		files: ['Gruntfile.coffee', 'Gruntfile.js', 'grunt/*.*']
		options:
			reload: true
	js:
		files: ['src/lib/**/*.js', 'src/lib/*.js']
		tasks: ['browserify:dev'] #'concat']
	scss:
		files: ['src/styles/*.s*ss', 'src/styles/**/*.s*ss']
		tasks: ['sass:dev']
	html:
		files: ['src/**.html']
		tasks: ['copy:html']
	fonts:
		files: ['src/fonts/**.*']
		tasks: ['copy:fonts']
	data:
		files: ['src/data/**']
		tasks: ['copy:data']
	img:
		files: ['src/img/**']
		tasks: ['imagemin:dev']
