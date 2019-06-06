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
    @errors = []
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
    # When the form fields were named reflection, book_id, etc, we had to call:
    # new_visit = Visit.new(reflection: params[:reflection], book_id: params[:book_id], landmark_id: params[:landmark_id])

    # But now the fields are named visit[reflection], visit[book_id], etc, so we can call:
    new_visit = Visit.new(params[:visit])

    # The last line should work, but the next line might not. When would the visit not save?
    if new_visit.save
      redirect '/visits/'
    else
      @errors = new_visit.errors.full_messages
      @landmarks = Landmark.all
      @books = Book.all
      erb :'visits/new'
    end
  end

  patch '/visits/:id' do
    find_visit

    @visit.assign_attributes(params[:visit])
    @visit.save

    redirect "/visits/#{@visit.id}"
  end

  delete '/visits/:id' do
    find_visit
    @visit.delete
    redirect '/visits'
  end

  def find_visit
    @visit = Visit.find_by(params[:id])
  end

end
