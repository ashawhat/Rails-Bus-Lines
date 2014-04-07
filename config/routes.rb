BusTimetable::Application.routes.draw do
  resources :stations
  resources :stops
  resources :lines
end
