Rails.application.routes.draw do

  devise_for :songs
root 'welcome#index'

end
