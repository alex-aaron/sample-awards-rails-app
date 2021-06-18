class CreateUserAwards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_awards do |t|
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end
