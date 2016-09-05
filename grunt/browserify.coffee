module.exports =
    dev:
        files: [
            expand: true
            cwd: 'src/lib'
            src: ['*.js']
            dest: 'dist/js'
        ]
        browserifyOptions:
            debug: true
    prod:
        files: [
            expand: true
            cwd: 'src/lib'
            src: ['*.js']
            dest: 'dist/js'
        ]
        browserifyOptions:
            debug: false
