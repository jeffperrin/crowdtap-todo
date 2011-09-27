module ApplicationHelper
  def flash_helper
    return if flash.blank?
    out = '<div class="flash">'
    flash.each do |key, msg|
      if msg.instance_of? Array
        out += "<ul class=\"#{key}\">"
        msg.each do |txt|
          out += "<li>#{txt}</li>"
        end
        out += "</ul>"
      else
        out += "<div class=\"#{key}\">#{msg}</div>"
      end
    end
    raw out += '</div>'
  end
end
