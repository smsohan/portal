Auth::Engine.routes.draw do
  get 'sessions/new', as: :new_session
  post 'sessions/create', as: :session
end
