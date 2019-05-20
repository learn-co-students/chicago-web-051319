class User
  attr_reader :username, :tweets
  attr_accessor :follow_count

  def initialize(username)
    @username = username
    @follow_count = 106
    # @tweets = []
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def add_follower
    self.follow_count += 1
    # p foobar
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end
end
