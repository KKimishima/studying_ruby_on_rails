class Comment < ApplicationRecord
  # かんれんするレコードを教えてる
  belongs_to :user
  belongs_to :article
end
