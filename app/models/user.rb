class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :user_company_types
  has_many :company_types, through: :user_company_types
  has_many :user_locations
  has_many :locations, through: :user_locations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  accepts_nested_attributes_for :user_categories
end
