class BooksController < ApplicationController

    #INDEX, ALL
    get '/books' do
        @Books = Book.all 
        erb :"books/index"
    end

    #CREATE GET
    get '/books/new' do
        erb :"books/new"
    end

    #READ GET
    get '/books/:id' do
        @Book = Book.find(params[:id])
        erb :"books/show"
    end

    #CREATE POST
    post '/books' do
        @Book = Book.create(params)
        redirect :"books/#{@Book.id}"
    end

    #UPDATE GET
    get '/books/:id/edit' do
        @Book = Book.find(params[:id])
        erb :"books/edit"
    end

    #UPDATE POST
    post '/books/:id' do
        @Book = Book.find(params[:id])
        @Book.update(params)
        redirect :"books/#{@Book.id}"
    end
    
end