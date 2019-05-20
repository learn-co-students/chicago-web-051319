class User
  attr_reader :username
  def initialize(username)
    @username = username
  end

  def liked_tweets
    # I want all of the tweets I liked as an array of Tweet instances
  end

  def likes
    Like.all.select do |like|
      like.user == self
    end
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end


  def like_tweet(tweet)
    Like.new(self, tweet)
  end

end
