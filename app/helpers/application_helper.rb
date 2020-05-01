module ApplicationHelper
  def title(page_title)
    @title = capture { page_title }
  end
end
