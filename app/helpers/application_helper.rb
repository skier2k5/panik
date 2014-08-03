module ApplicationHelper

  #Takes title of client, and adds the title of the current page
  def full_title(page_title)
    base_title = Client.current.title
    base_title += " | #{page_title}" unless page_title.empty?
  end

end
