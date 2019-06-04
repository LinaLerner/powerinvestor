class AddReferencesFavorites < ActiveRecord::Migration[5.2]
  def change
    add_reference :favorites, :project, foreign_key: true
    add_reference :favorites, :user, foreign_key: true
  end
end
