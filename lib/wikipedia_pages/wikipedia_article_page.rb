class WikipediaArticlePage
  include PageObject

  h1(:article_title, :id => 'firstHeading')
  div(:table_of_contents, :id => 'toc')

  def has_title?
    article_title?
  end

  def has_toc?
    table_of_contents?
  end

end
