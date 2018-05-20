class Article < ApplicationRecord
  # 参照先をアクティブレコードに教える
  belongs_to :user
end
