class Tweet
	attr_reader :date, :content

	def initialize(content, date)
		@content = content
		@date = date
	end

	def print_tweet
		user_name = "Josh"
		puts "#{user_name} says: #{@content} \n#{@date}"
	end

	def valid?
		@content.length <= 140
	end
end