Rails.application.routes.draw do
<<<<<<< HEAD

  get 'student/matches'

  get 'student/contact'

  get 'student/dorm'
  
  get 'student/student_home'

=======
  get 'answer/index'
  post 'answer/new'
>>>>>>> origin/master
  root :to => 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  get '/sign-in' => "devise/sessions#new", :as => :login
  end
  
end
