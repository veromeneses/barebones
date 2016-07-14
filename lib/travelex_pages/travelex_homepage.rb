class TravelexHomepage
  include PageObject

  page_url('https://www.travelex.co.uk/')

  element(:main_features, :section, :class => 'boxes')
  div(:slider, :class => 'draggable')

  def scroll_down_to_main_features
    main_features_element.scroll_into_view
  end

  def swipe_to_item(title)
     until slider_element.h4_element(:text => title).visible? do
       slider_element.element.touch_action(:flick, distance: -400)
       slider_element.h4_element.wait_until(3, 'Not swiping correcty') do
         slider_element.h4_element.visible? == false
       end
     end
     slider_element.h4_element(:text => title).text
  end
end
