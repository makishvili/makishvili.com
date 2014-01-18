readify:
	rm -rf .themes/readify;
	git clone git://github.com/vladigleba/readify.git .themes/readify;
	rake install['readify'];

generate:
	rake generate;

deploy:
	rake deploy;
