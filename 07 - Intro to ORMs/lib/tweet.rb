class Tweet
  attr_accessor :message, :username, :user_id, :id

  def initialize(props={})
    @message = props['message']
    @username = props['username']
    @user_id = props['user_id']
    @id = props['id']
  end

  def self.all
    # run SQL query to get all tweet records from our DB
    query = <<-HEREDOC
      SELECT *
      FROM tweets
    HEREDOC
    result = DB[:conn].execute(query)
    # take output and turn into Tweet instances
    result.map do |tweet_info|
      Tweet.new(tweet_info)
    end
  end

  def self.find(id)
    query = <<-HEREDOC
      SELECT *
      FROM tweets
      WHERE id = ?
      LIMIT 1
    HEREDOC

    result = DB[:conn].execute(query, id)[0]
    Tweet.new(result)
  end

  def save
    unless self.id
      # If the object lacks an ID, it means we're saving a new one
      query = <<-SQL
        INSERT INTO tweets
        (message, username)
        VALUES
        (?, ?)
      SQL

      result = DB[:conn].execute(query, message, username)
      last_row_info = DB[:conn].execute("SELECT last_insert_rowid()")[0]
      p my_id = last_row_info["last_insert_rowid()"]

      self.id = my_id
    else
      # If the object already has an ID, we need to update that record instead of creating a brand new one
      query = <<-SQL
        UPDATE tweets
        SET username = ?,
        user_id = ?,
        message = ?
        WHERE id = ?
      SQL

      DB[:conn].execute(query, username, user_id, message, id)
    end
    # [{"last_insert_rowid()"=>11}]
    # saved_as_id = ???
    # self.id = saved_as_id
  end


  # Tweet.new({'message' => "hello world", 'username' => 'coffeedad'})
end
