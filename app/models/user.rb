class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories
  has_many :entities

  validates :name, presence: true
  # validates :avatar, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_one_attached :avatar
end
