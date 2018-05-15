class Admin::UsersController < ApplicationController
  def index
    text = 'hoge'
    render plain: text
  end
end
