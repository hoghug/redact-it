Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  
  root 'projects#index'

  resources :projects
  
end
