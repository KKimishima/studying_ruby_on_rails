class Article < ApplicationRecord
  # 参照先をアクティブレコードに教える
  belongs_to :user
  # Articleが削除された場合、関連したcommentを削除する
  has_many :comment, dependent: :destroy

  # 中間テーブルの設定
  # Aritcleはarticles_tagを通してtagを所有する
  has_many :article_tag
  has_many :tag, through: :article_tag
end
