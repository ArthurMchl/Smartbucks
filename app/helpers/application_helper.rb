module ApplicationHelper
  def parse_date_fr(date)
    date.to_s.split("-").reverse.join("/")
  end

  def mobile_device?
    agent = request.user_agent
    return true if agent =~ /Mobile/

    false
  end
end
