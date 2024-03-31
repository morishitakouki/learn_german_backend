Rails.application.routes.draw do
  get 'questions/random', to: 'questions#random'
end
