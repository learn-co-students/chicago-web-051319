require_relative "user"
require_relative "tweet"
require "pry"

dad = User.new("matcha_dad")
dad.post_tweet("hello matcha")
dad.post_tweet("matcha Monday #fun")

sis = User.new("the_tea_sis")
sis.post_tweet("yummy tea, piping hot!")
sis.add_follower
p sis.follow_count


# puts Tweet.all

# binding.pry
