class Onebox::Engine::QuantaFrontierOneBox
	include Onebox::Engine

	REGEX = /^https?:\/\/quantafrontier.com\/research\/algorithm\/(\w+)/
	matches_regexp REGEX

	def id
		@url.match(REGEX)[1]
	end

	def to_html
		"<iframe width=\"100%\" height=\"160\" src=\"//quantafrontier.com\/research\/iframe?id=#{id}\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>"
	end
end
