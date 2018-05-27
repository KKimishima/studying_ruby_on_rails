class ApplicationController < ActionController::Base
  # protect_from_forgeryを有効に設定
  protect_from_forgery with: :exception, prepend: true
  before_action :authenticate_user!
end
