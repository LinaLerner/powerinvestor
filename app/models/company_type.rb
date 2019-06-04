class CompanyType < ApplicationRecord
  has_many :users, through: :user_company_type
end
