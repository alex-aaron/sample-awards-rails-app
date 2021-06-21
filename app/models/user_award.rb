class UserAward < ApplicationRecord
    belongs_to :non_devise_user
    has_many :categories
end
