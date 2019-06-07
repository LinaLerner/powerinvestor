class AddImageToCompanyTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :company_types, :image, :string
  end
end
