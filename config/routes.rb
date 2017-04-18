Rails.application.routes.draw do
<<<<<<< HEAD
=======

  
  get 'questionnaire/index'

  get 'admin/match'

  get 'admin/questionnaire'

  get 'admin/profile'

  get 'admin/students'

>>>>>>> 1cd8d8d6ddd355d6142427d7cfa164f024d26262

  get 'student/matches'

  get 'student/contact'

  get 'student/dorm'
  
  get 'student/student_home'

  get 'answer/index'
  post 'answer/new'
<<<<<<< HEAD
  get 'admin/match'

  get 'admin/questionnaire'

  get 'admin/profile'

  get 'admin/students'
=======
>>>>>>> 1cd8d8d6ddd355d6142427d7cfa164f024d26262

  root :to => 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end
  
  resources :questionnaire
  
  get '/admin', to: 'admin#index'
  
<<<<<<< HEAD
  resources :create_new do post :input, :on=>:collection
  
end
  
=======
<<<<<<< HEAD
  end

=======
>>>>>>> sarah_marley
end
>>>>>>> 1cd8d8d6ddd355d6142427d7cfa164f024d26262
