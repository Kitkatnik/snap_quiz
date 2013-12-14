SnapQuiz::Application.routes.draw do
  root to: 'students#index'

  resources :questions
  resources :students

  post '/quiz/new/:student' => 'quiz#new', as: 'new_quiz'
end
