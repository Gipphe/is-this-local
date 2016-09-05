var expect = require('chai').expect;

describe('isDev', function() {
	var isDev;
	var modulePath = '../dist/index';
	global.document = {
		location: {
			href: ''
		}
	};

	beforeEach(function() {
		delete require.cache[require.resolve(modulePath)];
	});
	it('should return a boolean', function() {
		isDev = require(modulePath);
		expect(isDev).to.be.a('boolean');
	});
	it('should return true for localhost', function() {
		document.location.href = 'localhost';
		isDev = require(modulePath);
		expect(isDev).to.be.true;
	});
	it('should return true for 127.0.0.1', function() {
		document.location.href = '127.0.0.1';
		isDev = require(modulePath);
		expect(isDev).to.be.true;
	});
	it('should return true for ::1', function() {
		document.location.href = '::1';
		isDev = require(modulePath);
		expect(isDev).to.be.true;
	});
	it('should return false for non-dev environments', function() {
		document.location.href = 'foo';
		isDev = require(modulePath);
		expect(isDev).to.be.false;
	});
	it('should throw if document or document.location.href is undefined', function() {
		document.location.href = void 0;
		expect(function() {
			require(modulePath);
		}).to.throw(Error, 'The global variable "document" is undefined. ' +
		'is-this-local is meant to be run in the browser.');
	});
});
