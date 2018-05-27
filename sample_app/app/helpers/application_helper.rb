module ApplicationHelper
  APP_NAME = 'Rails サンプルアプリ'.freeze
  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?
      `#{base_title}` | `#{@title}`
  end
end
