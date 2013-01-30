module ApplicationHelper

  # return the full title   
  def full_title(page_title)
    prefix = "Demo Page"
    if page_title.empty?
      prefix
    else
      "#{prefix} | #{page_title}"
    end
  end

end
