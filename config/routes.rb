BusTimetable::Application.routes.draw do
  resources :stations do
    resources :lines, :only => [:new, :create]
  end

  resources :lines, :except => [:new, :create]
end
