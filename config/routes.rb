Rails.application.routes.draw do
  root 'home#index'
  get 'work' => 'works#index'
	get 'request-headers' => 'request_headers#index'
end
