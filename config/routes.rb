Rails.application.routes.draw do
  get 'home/top'

  devise_for :users
  get 'decedent/new'

  get 'decedent/create'

  get 'decedent/show'

  get 'decedent/edit'

  get 'decedent/update'

  get 'decedent/destory'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
