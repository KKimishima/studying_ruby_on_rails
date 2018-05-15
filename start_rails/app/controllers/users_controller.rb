class UsersController < ApplicationController
  # 許可するアクションを設定
  before_action :require_login, only: [:index]

  def index
    # 何かの処理
  end

  def show
  end

  private

  def require_login
    # フィルターになる
    redirect_to login
  end
end
