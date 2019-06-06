class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|

      t.timestamps
    end
  end
end
