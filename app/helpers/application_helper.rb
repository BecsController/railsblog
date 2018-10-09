module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Bec's Ruby and Rails Blog"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
end
