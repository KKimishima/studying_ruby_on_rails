class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    text = 'hello'
    # 画面に文字を出力する
    render plain: text
  end
end
