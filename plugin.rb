# name: quantafrontier-onebox
# about: onebox
# version: 1.0
# authors: Quoc Le

class Onebox::Engine::QuantaFrontierOnebox
	include Onebox::Engine

	REGEX = /^https?:\/\/quantafrontier\.com\/research\/algorithm\/(\w+)(\?version=)?(\d+)?/
	matches_regexp REGEX

	def id
		@url.match(REGEX)[1]
	end

	def to_html
          matches = @url.match(REGEX)
          puts "onebox %s %d" % [@url, matches.length]
          if matches.length > 3
            return "<iframe width=\"100%\" height=\"600\" src=\"//quantafrontier.com/research/iframe?id=#{id}&version=#{matches[3]}\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>"
          else
	    return "<iframe width=\"100%\" height=\"600\" src=\"//quantafrontier.com/research/iframe?id=#{id}\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>"
          end
        end
end
