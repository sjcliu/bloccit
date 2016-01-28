Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  #Assignemnt 26
  get 'welcome/faq'

  root 'welcome#index'
end
