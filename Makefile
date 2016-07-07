all: bundle test

env: bundle

bundle: Gemfile
	bundle install

test:
	cucumber

parallel:
	parallel_cucumber features/

wikipedia:
	bundle exec cucumber -t @wikipedia

travelex:
	bundle exec cucumber -t @travelex
