class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

         has_many :categories
         validates :name, presence: true
         validates :email, presence: true, uniqueness: { case_sensitive: false }
         validates :password, presence: true
end
