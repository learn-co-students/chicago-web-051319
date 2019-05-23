require 'bundler'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/twitter.db')
}

DB[:conn].results_as_hash = true

require_relative '../lib/tweet.rb'
require_relative '../lib/tweets_app.rb'

# Probably what's going on when we establish our DB connection via Ruby:
# module SQLite3
#
#   class Database
#     def initialize(filename)
#       # ... code for reading the .db file / setting up the connection
#     end
#   end
#
# end
