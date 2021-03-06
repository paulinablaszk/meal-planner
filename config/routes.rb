Rails.application.routes.draw do
  devise_for :users,
               path: '',
               path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
               },
               controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
               }

  root 'static#index'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
        resources :recipes
    end  
  end
  
end
