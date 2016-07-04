# Barebones

This is an exercise where I've implemented a basic Cucumber test framework using watir-webdriver and page object model. In this exercise I'm performing some tests on some well known websites.
I've used the [page-object gem](https://github.com/cheezy/page-object) for easy implementation of page object model.

## Requirements
- Ruby 2.3.1
- [Bundler](http://bundler.io/) gem
- Firefox 46 or 47.0.1, but not 47.

## Install
Ruby can be installed following the instructions on [its website](https://www.ruby-lang.org/en/documentation/installation/)

To install Bundler gem + other gem dependencies:
```
make env
```

## Run
To execute all the tests in this repo and generate HTML report
```
make test
```
To install gem dependencies and run all tests
```
make all
```
More options can be found in the [Makefile](Makefile).

## Notes about this exercise

1. Not using backgrounds as scenarios are small enough so it wouldn’t make much of a difference.
2. Not using scenario outlines as I didn’t see the need since I’m not testing several similar test cases with different inputs and outputs.
3. Not using headless mode (at this point) as I wanted to see the tests executing.
4. Not using config files to set up hosts or timeouts at this point as it wasn't necessary for the bare bones version.
5. Not sure where the best place to put the pages was. My conclusion after investigation is that people just put them wherever it makes most sense for them so I did that. I'm having some second thoughts and will be probably moving my pages around but not just yet.

## Ideas not implement at this stage

1. Running tests in parallel.
2. Implementing screenshot at the end of failing scenario.
3. Implementing my own page objects without the need for the page-object gem.
4. Implementing option to run in PhantomJS.
