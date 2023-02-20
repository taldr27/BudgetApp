class User < ApplicationRecord
  has_many :categories
  has_many :entities

  validates :name, presence: true
  # validates :email, presence: true
end
