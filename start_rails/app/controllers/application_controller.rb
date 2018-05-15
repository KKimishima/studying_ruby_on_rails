class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    # text = 'hello'
    text = "params: #{params}"
    # 画面に文字を出力する
    # /hello?hoge=hogeにすると
    # params: {"hoge"=>"hoge", "controller"=>"application", "action"=>"hello"}
    render plain: text
  end
end
