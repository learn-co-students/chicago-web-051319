------ FUN THING TO KNOW --------
"Ready Or Not".downcase.gsub(" ", "-") # => "ready-or-not"

1) Workflow - setting a plan, knowing the next right step
2) Creating RESTful routes
3) Navigating RESTful routes
4) Working with params

WORKFLOW TIPS
Observe - Orient - Decide - Act

1) Define your steps
2) Recognize your next step
3) Complete that step, go back to 2)
4) Sometimes the next step is to figure out how to get unstuck
5) Sometimes the next step is to reorient to your next step!

Make a new character  (characters new (get me the form), characters create (add to the database from params))
Find a book based on a character / go to a character and see the books they're in (Characters show)
Find a character based on a book / go to a book and see the characters they're in (Books show)


SINATRA CRUD - WHAT ARE THE STEPS?

- run our bundler / set up Gemfile (faker, pry, etc)
- rake -T to verify I have tasks I need
- rake db:create
- rake db:create_migration NAME=create_my_table_name_plural ( < ActiveRecord::Migration)
- fill in our migration file with table name/fields as appropriate
- run our migrations (then double check schema)
- create folder structure for MVC , app/models, app/views, app/controllers
- create your models to breathe life into migrations ( < ActiveRecord::Base )
NEXT STEP IS:
- associate models as appropriate and test in console
- *** define request types and urls that I want to respond to in the controller
- create a controller to handle routing and set responses ( < Sinatra::Base )
- create routes in the controller and provide @variables so the view can act on them
- create .erb file to represent a view - index, show, new, edit
- Try to follow REST conventions as we define route names/methods
- When appropriate, access data from params hash to find / create / edit / delete objects
- In view, use form input "name= " to set param key (value entered will be in the hash too)
