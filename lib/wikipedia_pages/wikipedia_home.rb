class WikipediaHome
  include PageObject

  page_url('http://www.wikipedia.org')

  text_field(:search_box, :id => 'searchInput')
  button(:search_button, :xpath => '//form[@id="search-form"]//button')

  def search(term)
    self.search_box = term
    search_button
  end

end
