class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :short_description
      t.text :long_description
      t.string :provider
      t.integer :amount_needed
      t.integer :amount_collected
      t.integer :minimum_investment
      t.string :exit_timing
      t.string :city
      t.string :financial_product
      t.text :project_manager_profile
      t.datetime :start_date
      t.datetime :end_date
      t.string :project_url
      t.integer :rating
      t.string :impact
      t.timestamps
    end
  end
end
