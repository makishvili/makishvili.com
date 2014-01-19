readify.get:
	rm -rf .themes/readify;
	git clone git://github.com/makishvili/readify.git .themes/readify;

readify.set:
	rake install['readify'];

readify: readify.get readify.set

gen:
	rake generate;

deploy:
	rake deploy;

preview:
	rake preview;
