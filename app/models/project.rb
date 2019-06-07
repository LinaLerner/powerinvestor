class Project < ApplicationRecord
  include PgSearch
  has_many :project_categories
  has_many :categories, through: :project_categories
  belongs_to :company_type
  belongs_to :location

  pg_search_scope :category_search,
    associated_against: {
      categories: [ :title ]
    },
    using: {
      tsearch: { prefix: true }
    }


  pg_search_scope :company_type_search,
    associated_against: {
      company_type: [ :title ]
    },
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :location_search,
    against: [ :city, :minimum_investment ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :invest_search,
    against: [ :minimum_investment ],
    using: {
      tsearch: { prefix: true }
    }


end
