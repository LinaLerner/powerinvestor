class CreateProjectCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :project_categories do |t|

      t.timestamps
    end
  end
end
