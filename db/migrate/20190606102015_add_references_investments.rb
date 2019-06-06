class AddReferencesInvestments < ActiveRecord::Migration[5.2]
  def change
    add_reference :investments, :project, foreign_key: true
    add_reference :investments, :user, foreign_key: true
  end
end
