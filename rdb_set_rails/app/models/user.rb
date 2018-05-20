class User < ApplicationRecord
  # has_manyで関連することを設定する
  # dependent :destroy はuserを削除した際に articleをまとめて削除するオプション
  has_many :article, dependent: :destroy
  has_many :comment, dependent: :destroy
end
