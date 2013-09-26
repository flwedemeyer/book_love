
module LoveBooks

	include Nokogiri

	def get_titles(author)

		# this is hacky, but whatever.
		require 'cgi'
		require 'open-uri'

		titles = []
		url = "http://www.goodreads.com/search?utf8=%E2%9C%93&query=#{CGI.escape(author)}"
		doc = Nokogiri::HTML(open(url))
		title_objects = doc.css(".bookTitle")

		title_objects.each do |title_object|
			title_raw = title_object.text
			title_raw.strip!
			titles << title_raw
		end
		 titles
	end

end

