class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :award_id
      t.text :nominees
      t.string :winner

      t.timestamps
    end
  end
end
