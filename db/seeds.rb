# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = NonDeviseUser.create(username: "User1", password: "password1")
user2 = NonDeviseUser.create(username: "User2", password: "password2")
user_award1 = UserAward.create(year: 1992, non_devise_user_id: 1)
user_award2 = UserAward.create(year: 1986, non_devise_user_id: 2)
category1 = Category.create(user_award_id: 1, nominees: "Unforgiven/ Malcolm X / The Player", winner: "Unforgiven", name: "Best Picture")
category2 = Category.create(user_award_id: 2, nominees: "Blue Velvet/ Hannah and Her Sisters/ Big Trouble in Little China", winner: "Blue Velvet", name: "Best Picture")