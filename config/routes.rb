Rails.application.routes.draw do

  devise_for :songs
root 'welcome#index'

resources :songs, only: [:index, :show] do
	resources :lists
end

end
