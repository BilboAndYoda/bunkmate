Rails.application.routes.draw do
  get 'admin/match'

  get 'admin/questionnaire'

  get 'admin/profile'

  get 'admin/students'

  root :to => 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end
  
  get '/questionaire', to: 'questionaire#index'
  
  get '/admin', to: 'admin#index'
  
  end
