module ApplicationHelper
  def devise_error_messages
    return "" if resource.errors.empty?
    html = ""
    messages = resource.errors.full_messages.each do |msg|
      html += <<-EOF
        <div>
          <p class="alert">#{msg}</p>
        </div>
      EOF
    end
    html.html_safe
  end
end