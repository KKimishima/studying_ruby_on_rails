class Article < ApplicationRecord
  # enum機能でステータスを解決できようにしておく
  # draft: 下書き
  # published: 記事を公開状態
  enum status: {draft: 0, published: 1}

  # 20文字以上の記事タイトルは省略
  def abbreviated_title
    title.size >= 20  ? "#{title.slice(0,19)}..." : title
  end

  # 記事を公開する
  def publish
    return if self.published?
    update({status: Article.statuses['published'], published_at: Time.current})
  end
end
