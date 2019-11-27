module ApplicationHelper
  def parse_date_fr(date)
    date.to_s.split("-").reverse.join("/")
  end
end
