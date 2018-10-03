module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    html = "<div class='alert alert-danger alert-dismissible' role='alert'>
            <button type='button' class='close' data-dismiss='alert'>
              <span aria-hidden='true'>&times;</span>
            </button>"
    messages = resource.errors.full_messages.each do |errmsg|
      html += <<-EOF
        #{errmsg}
        <br>
      EOF
    end
    html += "<span class='sr-only'>close</span></div>"
    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

end
