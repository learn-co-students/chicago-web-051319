class ApplicationController < Sinatra::Base
  # set :root, File.dirname(__FILE__)
  set :views, 'app/views'

  get '/landmarks/?' do
    if params[:order] == "alpha"
      @landmarks = Landmark.all.order(:name)
    else
      @landmarks = Landmark.all
    end
    # "Hello World"
    # I want to create a whole HTML file
    # that knows how to make a div for each landmark
    # and have the details in paragraph tags within each div
    erb :"/landmarks/index", :layout => :layout
  end

  get '/landmarks/new/?' do
    erb :"/landmarks/new", :layout => :layout
  end

  get '/landmarks/:id/?' do
    landmark_id = params[:id]
    @landmark = Landmark.find_by(id: landmark_id)
    erb :"/landmarks/show", :layout => :layout
  end

  post '/landmarks' do
    p params
    new_landmark = Landmark.create(name: params[:name], location: params[:location], max_capacity: params[:max_capacity])
    redirect "/landmarks/#{new_landmark.id}"
  end

  get "/info/?" do
    "ROUTES: /landmarks to see all, /landmarks/{MY LANDMARK ID} to see one...etc"
  end
end
