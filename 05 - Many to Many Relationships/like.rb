class Like
  attr_accessor :user, :tweet

  @@all = []

  def self.all
    @@all
  end
  def initialize(user, tweet)
    @user = user
    @tweet = tweet
    @@all << self
  end


end
# Like.all
