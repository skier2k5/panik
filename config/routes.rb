Rails.application.routes.draw do
  root :to => 'home#index'

  get 'home' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'privacy' => 'home#privacy'
end
