Rails.application.routes.draw do
  resources :weather, only: %i(create)
end
