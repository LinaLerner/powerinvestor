class Category < ApplicationRecord
  has_many :project_categories
  has_many :projects, through: :project_category
  has_many :users, through: :user_category
end
