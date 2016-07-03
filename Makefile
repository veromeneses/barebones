all: bundle test

env: bundle

bundle: Gemfile
	bundle install

test: wikipedia travelex

wikipedia:
	bundle exec cucumber -t @wikipedia

travelex:
	bundle exec cucumber -t @travelex
