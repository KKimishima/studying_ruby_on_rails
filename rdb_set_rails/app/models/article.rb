class Article < ApplicationRecord
  # 参照先をアクティブレコードに教える
  belongs_to :user
  # Articleが削除された場合、関連したcommentを削除する
  has_many :comment, dependent: :destroy
end
