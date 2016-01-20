class NewsFeed
	def initialize
		@tweets_list = []
	end

	def add_tweet(single_tweet)
		@tweets_list.push(single_tweet)
	end

	def search(search_term)
		@tweets_list.select { | tweet | tweet.content.include?(search_term) }
		# tweets_with_search_term = []
		# @tweets_list.each do | tweet | 
		# 	if tweet.content.include?(search_term)
		# 		tweets_with_search_term.push(tweet)
		# 	end
		# end
		# tweets_with_search_term
	end

	def publish
		sorted_tweets = @tweets_list.sort { | tweet1, tweet2 | tweet2.date <=> tweet1.date }
		sorted_tweets.each do | tweet | 
			tweet.print_tweet
			puts ""
		end
	end
end