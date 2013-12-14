SnapQuiz::Application.routes.draw do
  root to: 'students#index'

  resources :questions
  resources :students

  get '/quiz/:id' => 'quiz#show', as: 'quiz'
  post '/quiz/new/:student' => 'quiz#new', as: 'new_quiz'
end
