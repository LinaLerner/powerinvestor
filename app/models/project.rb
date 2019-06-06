class Project < ApplicationRecord
  has_many :project_categories
  has_many :categories, through: :project_categories
  belongs_to :company_type
  belongs_to :location
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
