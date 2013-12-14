SnapQuiz::Application.routes.draw do
  root to: 'students#index'

  resources :questions
  resources :students

  get '/quiz/:id' => 'quiz#show', as: 'quiz'
  post '/quiz/:id' => 'quiz#answer', as: 'answer'
  post '/quiz/new/:student' => 'quiz#new', as: 'new_quiz'

  get '/you_win' => 'quiz#win'
  get '/you_fail' => 'quiz#fail'
end
