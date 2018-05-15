Rails.application.routes.draw do
  # resourcesはrestの一通りのルーティング作製
  # onlyでホワイトリスト的に追加使いできる
  # 例 resources :articles, only: [:index, :show]

  resources :articles
  resources :users
  get 'home/index'

  # この様にルーティングもデキる
  # get '/help', to: 'static_pages#help'

  get '/hello', to: 'application#hello'

  # ルートの名前を変える際は
  # get '/hello', to: 'application#hello' as foo
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
