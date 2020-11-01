Rails.application.routes.draw do
  root 'entries#all_entries'

  resources :feeds do
    member do
     resources :entries, only: [:index, :show]
    end
  end

  get :all_entries, to: 'entries#all_entries'
end
