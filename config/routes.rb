Rails.application.routes.draw do
  root 'html_page#home'
  get '/help', to: 'html_page#help'
  get '/about', to: 'html_page#about'
  get '/contact', to: 'html_page#contact'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
