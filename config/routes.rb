Rails.application.routes.draw do
  root 'home#index'
  get 'work' => 'works#index'
end
