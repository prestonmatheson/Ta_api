Rails.application.routes.draw do
	resources :hand_raise, only: [:create, :update]
end
