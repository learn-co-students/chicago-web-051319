# Gardenr
Do as much CRUD as possible from scratch!

Tools
Users

??? is this one to many or many to many?
we care because: if many to many, we'd need a join table!

For now: one user has many tools

Foreign key belongs on: tools (:user_id)

Create tables using migrations
  use create_table migration
  foreign keys are integers
  fields about info like name, condition can be strings

Set up associations between models
Test associations in console
SEEDS! Need to create and save some objects and test them...

Ok, associations are working. Now to create routes in config/routes! Maybe also set a route for the app's index `get '/'`

Build out first controller action - do I need to call Object.all? Object.find_by? what instance variable belongs in the view?

Name view folder and file according to conventions

TEST TEST TEST - try not to spend more than 5 minutes between checking up on progress in the browser.

use link_to helpers for links, and path/url helpers to create url strings. use rails routes to jog yoour memory on prefixes!

form_for @object do |f| to get started with my form

Name fields according to model attributes

In controller, create private method to set strong params using require(:model).permit(:attr_one, :attr_two) pattern

Handle errors in the create/update action, render the view again if the object didn't save
