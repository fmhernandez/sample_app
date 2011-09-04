module ApplicationHelper
<<<<<<< HEAD
# Return a title on a per-page basis.
=======
  # Return a title on a per-page basis.
>>>>>>> filling-in-layout
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
