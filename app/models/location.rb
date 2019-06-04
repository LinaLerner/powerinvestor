class Location < ApplicationRecord
  has_many :projects, through: :project_location
  has_many :users, through: :user_location
end
