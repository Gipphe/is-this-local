files = [
	expand: true
	cwd: 'src/img'
	src: ['*.{png,jpg,jpeg,gif}', '*/*.{png,jpg,jpeg,gif}', '!src/**', '!sort_*', '!ui-icons*']
	dest: 'dist/img'
,
	expand: true
	cwd: 'src/img'
	src: ['sort_*.png', 'ui-icons*.png']
	dest: 'dist/images'
]
	
module.exports =
	dev:
		options:
			optimizationLevel: 0
		files: files
	prod:
		options:
			optimizationLevel: 3
		files: files
