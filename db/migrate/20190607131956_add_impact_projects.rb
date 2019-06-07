class AddImpactProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :impact, :string
  end
end
