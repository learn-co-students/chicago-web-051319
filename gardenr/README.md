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
