.PHONY: css
css:
	./node_modules/.bin/postcss --use postcss-import --use precss --use autoprefixer --use cssnano source/css/source.css --output source/css/typing.css

.PHONY: copy
copy:
	mkdir -p ../hexo-theme-unit-test/themes/siren
	cp -r ./layout ../hexo-theme-unit-test/themes/siren/
	cp -r ./source ../hexo-theme-unit-test/themes/siren/
	cp -r ./languages ../hexo-theme-unit-test/themes/siren/
	cp -r ./_config.yml ../hexo-theme-unit-test/themes/siren/


.PHONY: all
all:
	make css
	make copy
