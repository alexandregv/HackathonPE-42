module ApplicationHelper
  def id_active(controller, action = nil)
    return 'is-active' if (params[:controller] == controller && params[:action] == action) || (params[:controller] == controller && action.nil?)
  end

  def page_title(separator = " | ")
    ['Hackathon', content_for(:title)].compact.join(separator)
  end

  def no_container()
    content_for(:no_container)
  end

  def no_turbolinks
    content_for(:turbolinks){ "data-turbolinks=false" }
  end
end
