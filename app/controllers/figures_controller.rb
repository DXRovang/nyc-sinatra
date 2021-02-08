class FiguresController < ApplicationController
  get '/figures' do #index
    erb :'figures/index'
  end

  get '/figures/new' do #new
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do #create
    new_figure = Figure.new
    new_figure.name = params[:title][:name]
    binding.pry
    new_figure.save
    
  end

  get '/' do #show
    
  end

  get '/' do #edit
    
  end

  post '/' do #update
    
  end

  post '/' do #delete
    
  end
end
