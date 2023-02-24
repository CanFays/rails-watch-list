Rails.application.routes.draw do
  # root "articles#index"
  resources :lists, only: %i[index new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end

# Un utilisateur peut voir les détails d’une liste donnée et son nom
# GET "lists/42"
