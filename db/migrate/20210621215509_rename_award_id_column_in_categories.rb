class RenameAwardIdColumnInCategories < ActiveRecord::Migration[6.1]
  def change
    rename_column(:categories, :award_id, :user_award_id)
  end
end
