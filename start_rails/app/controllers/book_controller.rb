class BookController < ApplicationController
  layout 'book'
  def index
    # flashメッセージの設定
    flash[:notice] = '一度だけ表示れるメッセージ'

  end
end
