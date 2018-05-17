require 'digest/md5'

class ApplicationController < ActionController::Base
  # 他のサーバからの不正なアクセスを拒否
  protect_from_forgery with: :exception
  # digest認証処理へ飛ばす
  before_action :authenticate

  # Digest認証設定
  REALM = 'SecreZone'.freeze
  # ユーザ名 =>{ユーザ名 :Realm:パスワード}のハッシュ
  USERS = {'user1' => Digest::MD5.hexdigest(["user1",REALM,'pass'].join(":"))}.freeze


  # アクティブレコードで検索失敗した場合
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  # 400系エラー
  # publicの対応するhtmlに送られる
  # 500系エラーは無理にハンドリングせず,
  # 自動的に対応するhtmlに送る
  def not_found
    render "errors/404", status: 404
  end

  def hello
    # text = 'hello'
    text = "params: #{params}"
    # 画面に文字を出力する
    # /hello?hoge=hogeにすると
    # params: {"hoge"=>"hoge", "controller"=>"application", "action"=>"hello"}
    render plain: text
  end

  private

  # Digest認証
  def authenticate
    authenticate_or_request_with_http_digest(REALM) do |username|
      USERS[username]
    end
  end
end
