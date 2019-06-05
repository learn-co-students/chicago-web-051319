class VisitsController < ApplicationController
  # index showing all visits
  get '/visits/?' do
    @visits = Visit.all

    erb :'visits/index'
  end

  # See the form where I'll fill in new visit info
  get '/visits/new' do
    @landmarks = Landmark.all
    @books = Book.all
    erb :'visits/new'
  end

  # Show page for visit
  get '/visits/:id' do
    find_visit
    erb :'visits/show'
  end

  # Edit form for visit
  get '/visits/:id/edit' do
    find_visit
    @landmarks = Landmark.all
    @books = Book.all
    erb :'visits/edit'
  end

  # Do the actual creation of new visit in DB
  post '/visits' do
    p params
    # new_visit = Visit.new(reflection: params[:reflection], book_id: params[:book_id], landmark_id: params[:landmark_id])
    new_visit = Visit.new(params[:visit])
    new_visit.save

    redirect '/visits/'
  end

  patch '/visits/:id' do
    find_visit

    @visit.update(params[:visit])

    redirect "/visits/#{@visit.id}"
  end

  def find_visit
    @visit = Visit.find_by(params[:id])
  end

end
