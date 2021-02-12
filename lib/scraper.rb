require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("http://flatironschool.com/"))
doc.css(".headline-26OIBN").text.strip


courses = doc.css(".buttonBlue-3yHkWz.heading-3RIoNe")[0]

courses.each do |course|
  puts course.text.strip
end 



