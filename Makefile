all: bundle test

env: bundle

bundle: Gemfile
	gem install bundler
	bundle install

test: wikipedia travelex

wikipedia:
	cucumber -t @wikipedia

travelex:
	cucumber -t @travelex
