Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/game_studios', to: 'game_studios#index'
  get '/game_studios/:id', to: 'game_studios#show'
  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  get '/game_studios/:id/games', to: 'games#show_by_parent_id' 

end
