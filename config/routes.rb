Rails.application.routes.draw do
  get 'logs/index'

  root 'home#index'
  get 'work' => 'works#index'
	get 'visitors' => 'visitors#index'
  get 'flat-details'=> 'flat_details#index'
  get 'logs' => 'logs#index'
  get 'visitors/page/:page_no' => 'visitors#page', as: :visitors_by_page
end
