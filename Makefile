# brew install fswatch
# brew install sassc
#
# pre jekyll, for nokogiri:
# brew tap homebrew/dupes
# brew install libxml2 libxslt
# brew install libiconv
# gem install nokogiri  -v '1.6.1' -- --with-iconv-dir=/usr/local/Cellar/libiconv/1.14/
# sudo gem install jekyll
#
# for jekyll:
# ruby
# gem install bundler
# bundle install

####################

.PHONY: run kill restart sass deploy build server

####################

kill:
	@echo "!kill"

####################

run: run_sass

run_sass:
	@make restart_sass

	@echo "watching sass ..."

	@fswatch \
		-o \
		assets/sass/*.sass \
		| xargs -n1 -I{} make restart_sass || make kill

restart_sass:
	@make kill
	@make sass

####################

sass:
	@echo "sass compile .."

	@sass-convert \
   -F sass \
   -T scss \
   -C \
   assets/sass/style.sass \
   assets/sass/style.scss

	@sassc \
   -t compressed \
   assets/sass/style.scss \
   assets/css/style.css

	@node_modules/node-notifier/vendor/terminal-notifier.app/Contents/MacOS/terminal-notifier \
	  -message "Sass Compiled"

####################

build:
	@make sass
	@make app

####################

server:
	@bundle exec jekyll serve
