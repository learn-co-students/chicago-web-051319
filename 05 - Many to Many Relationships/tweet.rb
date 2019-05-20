class Tweet

  @@all = []

  def self.all
    @@all
  end

  def initialize(message, user)
    @user = user
    @message = message
    @@all << self
  end

end
