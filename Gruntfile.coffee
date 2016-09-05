module.exports = (grunt) ->
	require('time-grunt') grunt
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'

	require('load-grunt-config') grunt,
		jitGrunt: true