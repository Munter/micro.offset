default: micro.offset-min.js

PHONY: clean

micro.offset-debug.js: lib/ns.js lib/offset.js
	echo "(function () {" >> $@
	sed "s/^/\t/g" lib/ns.js >> $@
	echo "" >> $@
	sed "s/^/\t/g" lib/offset.js >> $@
	echo "}())" >> $@

micro.offset-min.js: micro.offset-debug.js
	uglifyjs -nc $< > $@

clean:
	rm *.js
