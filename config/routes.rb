Rails.application.routes.draw do
  root 'home#index'
  get 'work' => 'works#index'
	get 'visitors' => 'visitors#index'
end
