Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  get 'players/new'
  get 'players/edit'
  get 'clubs/index'
  get 'clubs/show'
  get 'clubs/new'
  get 'clubs/create'
  get 'clubs/update'
  get 'teams/index'
  get 'teams/show'
  get 'teams/new'
  get 'teams/create'
  get 'teams/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
