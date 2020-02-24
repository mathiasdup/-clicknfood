class User < ApplicationRecord
  has_many :orders
  has_many :meals

  validates :username, presence: true, uniqueness: true
  validates :address, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
