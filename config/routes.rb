Rails.application.routes.draw do
  get 'logs/index'

  root 'home#index'
  get 'work' => 'works#index'
	get 'visitors' => 'visitors#index'
  get 'flat-details'=> 'flat_details#index'
  get 'logs' => 'logs#index'
end
