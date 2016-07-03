all: ruby bundle test

ruby:
	brew install ruby
	gem install bundler

bundle: Gemfile
	bundle install

test: wikipedia travelex

wikipedia:
	cucumber -t @wikipedia

travelex:
	cucumber -t @travelex
