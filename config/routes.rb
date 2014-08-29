Rails.application.routes.draw do
  root :to => 'home#index'

  get 'home' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'privacy' => 'home#privacy'
  get 'agreement' => 'home#agreement'

  # Kutorable specific routes
  get 'vote' => 'kutorable/voting#vote'
  get 'vote/reload' => 'kutorable/home#random_animal_picture'
  post 'signup' => 'kutorable/home#mailing_list_sign_up'
end
