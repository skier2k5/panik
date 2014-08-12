Rails.application.routes.draw do
  root :to => 'home#index'

  get 'home' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'privacy' => 'home#privacy'
  get 'agreement' => 'home#agreement'

  # Kutorable specific routes
  get 'vote' => 'kutorable/voting#vote'
end
