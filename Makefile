all: bundle test

env: bundle

bundle: Gemfile
	bundle install

test:
	cucumber

wikipedia:
	bundle exec cucumber -t @wikipedia

travelex:
	bundle exec cucumber -t @travelex
