require_relative('lib/tweet.rb')
require_relative('lib/news_feed.rb')

my_tweet = Tweet.new("This is my first tweet", Time.new(2016, 1, 20))
my_second_tweet = Tweet.new("This is my second tweet", Time.new(2016, 1, 19))
my_third_tweet = Tweet.new("This is my third tweet", Time.new(2016, 1, 18))

# my_tweet.print_tweet
# my_second_tweet.print_tweet
# my_third_tweet.print_tweet

# list_of_tweets = [my_tweet, my_second_tweet, my_third_tweet]

my_feed = NewsFeed.new 
my_feed.add_tweet(my_second_tweet)
my_feed.add_tweet(my_tweet)
my_feed.add_tweet(my_third_tweet)

# tweets_with_second = my_feed.search("my")
tweet_with_third = my_feed.search("third")
p tweet_with_third
# my_feed.publish

# user_input = ""
# while user_input != "EXIT"
# 	puts "Enter NEW for to create a new Tweet, EXIT to exit"
# 	user_input = gets.chomp
# 	if user_input == "NEW"
# 		puts "Enter your tweet content: "
# 		tweet_content = gets.chomp
# 		new_tweet = Tweet.new(tweet_content, Time.now)
# 		if new_tweet.valid?
# 			puts "Your tweet has been added!"
# 			my_feed.add_tweet(new_tweet)
# 			system "clear"
# 			my_feed.publish
# 		else 
# 			puts "Your message is more than 140 characters"
# 			# Prompt the user for input again
# 		end
# 	end
# end 





