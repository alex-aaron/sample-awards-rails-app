class RenameColumnUserIdInUserAwards < ActiveRecord::Migration[6.1]
  def change
    rename_column(:user_awards, :user_id, :non_devise_user_id)
  end
end
