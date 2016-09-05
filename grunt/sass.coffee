files = [
	expand: true
	cwd: 'src/styles'
	src: ['style.s*ss']
	dest: 'dist/css'
	ext: '.css'
]
module.exports =
	dev:
		options:
			outputStyle: 'expanded'
			sourceMap: true
		files: files
	prod:
		options:
			outputStyle: 'compressed'
			sourceMap: false
		files: files
	dtDev:
		options:
			outputStyle: 'expanded'
			sourceMap: true
		src: [
			'node_modules/datatables.net-dt/css/*.css',
			'node_modules/datatables.net-fixedheader-dt/css/*.css',
			'node_modules/datatables.net-responsive-dt/css/*.css',
			'node_modules/datatables.net-scroller-dt/css/*.css'
		]
		dest: 'dist/css/dt.css'