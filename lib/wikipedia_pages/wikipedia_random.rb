class WikipediaRandom
  include PageObject

  page_url('http://en.wikipedia.org/wiki/Special:Random')

  h1(:random_article_title, :id => 'firstHeading')

  def get_random_article_title
    random_article_title
  end

end
