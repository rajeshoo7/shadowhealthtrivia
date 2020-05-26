Rails.application.routes.draw do
  get 'takequiz/takequiz'
  get 'scoreboard/scoreboard'
  
  root 'add_questions#index'

  resources :add_questions


end
