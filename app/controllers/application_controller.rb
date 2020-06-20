class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
    get '/' do
      redirect to '/recipes'
    end

    get '/recipes' do
      @recipes = Recipe.all
      erb :index
    end

    get '/recipes/new' do
      erb :new
    end

    get '/recipes/:id' do
      @recipe = Recipe.find_by_id(params[:id])
      erb :show
    end

    delete '/recipes/:id' do
      Recipe.find_by_id(params[:id]).destroy
      redirect to '/recipes'
    end

    get '/recipes/:id/edit' do
      @recipe = Recipe.find_by_id(params[:id])
      erb :edit
    end

    post '/recipes' do
      recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
      redirect to "/recipes/#{recipe.id}"
    end

    patch '/recipes/:id' do
      recipe = Recipe.find_by_id(params[:id])
      recipe.update(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
      redirect to "/recipes/#{recipe.id}"
    end
=======
  # code actions here!
  get '/' do
    redirect to '/recipes'
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes/:id' do
    @recipe = recipe.find_by_id(params[:id])
    erb :show
  end
>>>>>>> f15335b1a17c7898d124647f15dd657a8a141a26

  delete '/recipes/:id' do
      Recipe.find_by_id(params[:id]).destroy
      redirect to '/recipes'
    end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  post '/recipes' do
    recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect to "/recipes/#{recipe.id}"
  end

  patch '/recipes/:id' do
    recipe = Recipe.find_by_id(params[:id])
    recipe.update(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect to "/recipes/#{recipe.id}"
  end
end
