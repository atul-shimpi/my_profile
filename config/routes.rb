Rails.application.routes.draw do
  root 'works#index'
  get 'work' => 'works#index'
end
