Rails.application.routes.draw do
  root 'html_page#home'
  get 'html_page/help'
  get 'html_page/about'
  get 'html_page/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
