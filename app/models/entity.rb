class Entity < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :user_id, presence: true
end
