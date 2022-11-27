Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'students', to: 'students#index'


  get 'students/grades', to: 'students#grades'

  get '/students/highest-grade', to: 'students#highest_grade'
end

#index method will always be called when user goes to /students
# 'students#index' tells the Rails routing system
#  that this route should be passed through 
#  the StudentsController's index action.
