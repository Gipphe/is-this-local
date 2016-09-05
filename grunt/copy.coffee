module.exports =
	html:
		files: [
			expand: true
			cwd: 'src/'
			src: '*.html'
			dest: 'dist'
		]
	fonts:
		files: [
			expand: true
			cwd: 'src/fonts'
			src: '*.*'
			dest: 'dist/fonts'
		]
	data:
		files: [
			expand: true
			cwd: 'src/data'
			src: ['*', '**/*']
			dest: 'dist/data'
		]
	push:
		files: [
			expand: true
			cwd: 'dist/'
			src: ['*', '**/*']
			dest: '\\\\srvpsh03\\c$\\inetpub\\wwwroot\\TEST\\eodoversikt'
		]
