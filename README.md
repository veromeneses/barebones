# Barebones

This is an exercise where I've implemented a basic Cucumber test framework using watir-webdriver and page object model. In this exercise I'm performing some tests on some well known websites.
I've used the [page-object gem](https://github.com/cheezy/page-object) for easy implementation of page object model.

## Requirements

- Ruby 2.3.1
- Bundler gem
- Firefox 46: Because the latest Selenium has a problem with Firefox 47.
- Homebrew: In case you need to install Ruby.

## Install

Firefox would have to be installed directly from their old releases [FTP site](https://ftp.mozilla.org/pub/firefox/releases/46.0/).

To install Ruby + Bundler gem + project gem dependencies:
```
make env
```

## Run
To execute all the tests in this repo
```
make test
```

To install all dependencies and run all tests
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

## Ideas I didn't implement at this stage, but I will eventually

1. Running tests in parallel
2. Adding nice html reports
3. Implementing screenshot at the end of failing scenario
4. Implementing my own page objects without the need of the page-object gem.
5. Implementing option to run in PhantomJS
