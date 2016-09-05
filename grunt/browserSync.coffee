module.exports =
	dev:
		bsFiles:
			src: 'dist/**'
		options:
			watchTask: true
			server:
				baseDir: 'dist/'
				routes:
					"/data/getTable.php": "data/getTable.json"
			port: 8080
			open: false
			ghostMode: false
			watchOptions:
				ignored: [
					'dist/data/*.json'
					'dist/css/*.map'
				]