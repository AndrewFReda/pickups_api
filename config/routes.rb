PickupsApi::Application.routes.draw do

  post 'pickups/players/:id/game/:game_id' => 'players#join_game'

  scope path: 'pickups' do
    resources :games
    resources :players
    resources :users
  end
end
