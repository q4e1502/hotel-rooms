Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  root to: 'rooms#index'
  get 'rooms/get_rooms', to: 'rooms#get_rooms'
end
