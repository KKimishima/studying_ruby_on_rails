class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
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
end
