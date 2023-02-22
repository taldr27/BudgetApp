class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :entities

  validates :name, presence: true
  # validates :icon, presence: true

  has_one_attached :icon

  def self.total_amount(category)
    total_amount = 0
    category.entities.each do |entity|
      total_amount += entity.amount
    end
    total_amount
  end
end
