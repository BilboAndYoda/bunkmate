Rails.application.routes.draw do
<<<<<<< HEAD
=======
<<<<<<< HEAD
  get 'admin/match'

  get 'admin/questionnaire'

  get 'admin/profile'

  get 'admin/students'

=======
<<<<<<< HEAD
>>>>>>> e8c35036710a5a141d17d1d0d796b9e5af409930

  get 'student/matches'

  get 'student/contact'

  get 'student/dorm'
  
  get 'student/student_home'

  get 'answer/index'
  post 'answer/new'
<<<<<<< HEAD
=======
>>>>>>> origin/master
>>>>>>> origin/master
>>>>>>> e8c35036710a5a141d17d1d0d796b9e5af409930
  root :to => 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end
  
<<<<<<< HEAD
  get '/questionaire', to: 'questionaire#index'
  
  get '/admin', to: 'admin#index'
  
  end
=======
end
>>>>>>> origin/master
