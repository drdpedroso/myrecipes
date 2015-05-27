Rails.application.routes.draw do
 root 'pages#home'  #manda direto pra pagina home
 get "/home", to: 'pages#home'
end
