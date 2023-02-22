class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :entities

  validates :name, presence: true
  validates :icon, presence: true

  has_one_attached :icon
end
