var href = document && document.location.href;

if (!href && typeof href !== 'string') {
	throw new Error('The global variable "document" is undefined. ' +
		'is-this-local is meant to be run in the browser.');
}

return Boolean(href && href.match(/localhost|127\.0\.0\.1|::1/));
