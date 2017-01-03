Rails.application.routes.draw do

  devise_for :songs

resources :songs, only: [:index, :show] do
	resources :lists
end
	authenticated :song do
		root 'songs#dashboard', as: "authenticated_root"
	end

		root 'welcome#index'
end
