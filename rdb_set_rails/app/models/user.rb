class User < ApplicationRecord
  # has_manyで関連することを設定する
  # dependent :destroy はuserを削除した際に articleをまとめて削除するオプション
  has_many :article, dependent: :destroy
  has_many :comment, dependent: :destroy
  # バリデーション
  # 入力制限をかける
  # uniquenessは一意な値
  validates :name, uniqueness: true
  # 長さを保証
  validates :name, length: {minimum: 3}
  # presenceは値があることを保証
  validates :email, presence: true

  scope :create_two_user, ->  {order(id: :desc)}
end
