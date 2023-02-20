class Category < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'user_id'
  has_many :entities


  validates :name, presence: true
end
