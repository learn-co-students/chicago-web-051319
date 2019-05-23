class TweetsApp

  def call
    puts 'Welcome to Twitter'

    # puts 'Enter a username:'
    # username = gets.chomp
    #
    # puts 'Enter a message:'
    # message = gets.chomp

    # tweet = Tweet.new({'username' => username, 'message' => message})
    # tweet.save
    # tweets = Tweet.all
    # render(tweets
    
    puts 'Enter an ID of the tweet you need to edit'
    tweet_id = gets.chomp
    tweet = Tweet.find(tweet_id)
    render([tweet])

    puts 'Please enter the new username'
    tweet.username = gets.chomp

    puts 'thanks for your edit! Saving...'
    tweet.save

    puts '...done! Here\'s your updated tweet:'
    render([Tweet.find(tweet_id)])

    # found_tweet = Tweet.find(8)
  end

  private

  def render(tweets)
    tweets.each.with_index(1) do |tweet, i|
      puts "#{i}. #{tweet.username} says: #{tweet.message}"
    end
  end
end
