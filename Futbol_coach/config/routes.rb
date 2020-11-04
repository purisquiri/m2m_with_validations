Rails.application.routes.draw do
 get '/', to: 'application#home', as: 'home'
 get '/about', to: 'application#about', as: 'about' 

 resources :clubs
 resources :players
end
