class CreateUserCompanyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_company_types do |t|

      t.timestamps
    end
  end
end
