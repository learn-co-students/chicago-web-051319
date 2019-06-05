What We're Gonna Be Able To Do Really Soon:

- Explain the Model View Controller (MVC) pattern and give an example
- Explain how web frameworks (like Sinatra) use the MVC pattern and why
- Define 'convention over configuration'
- Implement one model that inherits from ActiveRecord
- Implement one controller to route and process requests
- Demonstrate how the params hash changes and where the data comes from
- Implement ERB template and get it to render data from controller and model
- Practice file structure in Sinatra
- Identify the connection between REST and CRUD

NOTES:

MVC Stands for MODEL, VIEW, CONTROLLER.

Model: Knows about app's data. Has information, has methods that access that information in useful ways
View: What the user sees, also what the user interacts with
Controller: Calls the shots of the app. Takes input from the user (via the view), decides which model to talk to and how, and prepares the response that goes out in the next view.

Sinatra is designed to help us build RESTful apps. REST stands for REpresentational State Transfer

A writer once said there are basically only seven types of story you can tell. The same is true for conventional RESTful routing!

CRUD Action                   //  RESTful method (verb) & action (path)

See all landmarks                 get "/landmarks" (get "/")
See one landmark                  get "/landmarks/:id"
See form to create landmark       get "/landmarks/new"
Create new landmark in DB         post "/landmarks"
See form to edit landmark         get "/landmarks/:id/edit"
Update existing landmark in DB    put/patch "/landmarks/:id"
Delete a given landmark           delete "/landmarks/:id"

"/landmarks/:id/bookings/new"
