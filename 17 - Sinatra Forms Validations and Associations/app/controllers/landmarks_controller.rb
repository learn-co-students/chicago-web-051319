class LandmarksController < ApplicationController
  # Question mark after the trailing slash means that slash is optional
  get '/landmarks/?' do
    if params[:order] == "alpha"
      @landmarks = Landmark.all.order(:name)
    else
      @landmarks = Landmark.all
    end
    erb :"/landmarks/index"
  end

  get '/landmarks/new/?' do
    @books = Book.all
    erb :"/landmarks/new"
  end

  get '/landmarks/:id/?' do
    landmark_id = params[:id]
    @landmark = Landmark.find_by(id: landmark_id)
    erb :"/landmarks/show"
  end

  post '/landmarks' do
    p params
    new_landmark = Landmark.new(params[:landmark])
    if new_landmark.save
      if params[:visit] && params[:visit][:reflection]
        new_visit = Visit.new(params[:visit])
        new_visit.landmark = new_landmark
        new_visit.save
      end
      redirect "/landmarks/#{new_landmark.id}"
    else
      @books = Book.all
      @errors = new_landmark.errors.full_messages
      erb :"/landmarks/new"
    end
  end

  get "/info/?" do
    # We could totally have our app return a list of all navigable routes, if we wanted to. This route is not named according to REST conventions, it's more of a "user-facing" name.
    "ROUTES: /landmarks to see all, /landmarks/{MY LANDMARK ID} to see one...etc"
  end
end
