Rails.application.routes.draw do

  # restに書き換え
  # get 'users/index'
  # get 'users/show'
  resources :users, only: [:index, :show]

  # resourcesはrestの一通りのルーティング作製
  # onlyでホワイトリスト的に追加使いできる
  # 例 resources :articles, only: [:index, :show]

  resources :articles
  get 'home/index'

  # この様にルーティングもデキる
  # get '/help', to: 'static_pages#help'

  get '/hello', to: 'application#hello'

  # ルートの名前を変える際は
  # get '/hello', to: 'application#hello' as foo

  # ネームスペースを使うこともデキる
  namespace :admin do
    # 入力制限もかけられる
    resources :users, conditions: {
        id: /[a-z]{1,5}/
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
