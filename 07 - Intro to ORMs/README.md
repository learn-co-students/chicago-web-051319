# Intro to ORMs (Object Relational Mappers)

# GETTING ORIENTED

## ENVIRONMENT - where the heck are we?
  - Rake
  - Environment
  - Gemfile
  - DB
  - Ruby x SQL (mixtape collab of the week!)

## REVIEW - What do we already know about? Can we re-apply that knowledge?

### Redefining our *nouns*

Ruby-land lingo             |      DB-land lingo
class Dog                   |   table dogs
class instance              |   row  
instance variable           |   attribute / field / cell

### Redefining our *verbs*

CREATE
raw SQL: INSERT INTO dogs (bark_vol, name, age, breed) VALUES (6, "Fido", 4, "lab")
ideal Ruby equivalent:
dog = Dog.new({name: "Fido", breed: "lab", age: 4, bark_vol: 6})
dog.save # maybe we call on SQL here


READ
raw SQL: SELECT * FROM dogs
ideal Ruby equivalent: Dog.all >>> [#<Dog>, #<Dog>]

SELECT * FROM dogs WHERE id = 3 LIMIT 1
Dog.find(3) .... #<Dog>

UPDATE
raw SQL: UPDATE dogs SET bark_vol = 3 WHERE dogs.id = 3
ideal Ruby equivalent: dog = Dog.find(3)
dog.bark_vol=(3)
dog.save

DELETE
raw SQL: DELETE FROM dogs WHERE id = 4
ideal Ruby equivalent: dog.delete / dog.destroy

## OUR MODEL DOMAIN

A tweet belongs to a user and has some message content

A user has a username, and has many tweets

(Q: Which table carries the responsibility of knowing the other's ID?)

A tweet can have many tags and a tag can have many tweets

### Let's Model Our Schema!
users
------
id | username
3   | "duke"  
2    | "coffeedad"

tweets
id | message | user_id
2   | "#coffee" | 2

tweet_tags
------------
id | tweet_id | tag_id
1   | 2       | 9

tags
-------
id | name
9 | "#coffee"

## QUERY REVIEW

Q: Write the SQL to find all tweets written by user with ID of 2
```SQL
SELECT * FROM tweets WHERE user_id = 2
```

Q: Write the SQL to find all tweets tagged with "#matcha"
```SQL
SELECT * FROM tweets
JOIN tweet_tags ON tweets.id = tweet_tags.tweet_id
JOIN tags ON tweet_tags.tag_id = tags.id
WHERE tags.name = "#matcha"
```

## PUTTING THINGS TOGETHER - OUR BIG FUN ORM REFACTOR!

Run our app
Why do we feel sad?
How can we get happier?
Let's do that!
And save stuff!
