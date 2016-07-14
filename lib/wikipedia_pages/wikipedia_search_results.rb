class WikipediaSearchResults
  include PageObject

  div(:did_you_mean, :class => 'searchdidyoumean')
  link(:did_you_mean_link, :id => 'mw-search-DYM-suggestion')
  unordered_list(:search_results, :class => 'mw-search-results')

  def goto_dym_suggestion
    did_you_mean_link
  end

  def count_search_results
    search_results_element.count
  end

  def visit_first_search_result
    search_results_element.first.link_element.click
  end

end
