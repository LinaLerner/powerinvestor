class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :locations, foreign_key: true
    add_reference :user_locations, :location, foreign_key: true
    add_reference :user_locations, :user, foreign_key: true
    add_reference :projects, :company_type, foreign_key: true
    add_reference :user_company_types, :company_type, foreign_key: true
    add_reference :user_company_types, :user, foreign_key: true
    add_reference :project_categories, :project, foreign_key: true
    add_reference :project_categories, :category, foreign_key: true
    add_reference :user_categories, :user, foreign_key: true
  end
end
