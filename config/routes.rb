Rails.application.routes.draw do
 root 'pages#home'  #manda direto pra pagina home
 get '/home', to: 'pages#home'
# get "/home", to: 'pages#home' # http get requestion
# get "/recipes", to:'recipes#index' #vai pro recipes controller e procura pelo index se for pro /routes
# get "/recipes/new",to:'recipes#new',as: 'new_recipes' #será mostrado como new_recipe
 #post "/recipes",to: 'recipes#create'
# get "/recipes/:id/edit",to: 'recipes#edit',as: 'edit_recipe'
# patch "/recipes/:id",to: "recipes#update"
# get "/recipes/:id",to: "recipes#show",as: 'recipe'
# delete "/recipes/:id",to: "recipes#destroy"
 
 resources :recipes do
  member do
   post 'like'
  end
 end
 
 resources :chefs, except: [:new]
 
 get '/register', to: "chefs#new"
 
 get '/login', to: "logins#new"
 post '/login', to: "logins#create"
 get '/logout',to: "logins#destroy"
 
end
