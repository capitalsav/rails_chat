module ApplicationHelper
  def render_header_footer(controller_name, action_name)
    controller_name == 'sessions' && action_name == 'new' ||
        controller_name == 'registrations' && action_name == 'new' ||
        controller_name == 'static_pages' && action_name == 'about'
  end
end
