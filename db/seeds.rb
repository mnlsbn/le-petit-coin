# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS SEEDS--------------------------------------------------------------------

names = ['daniels', 'dupont', 'durand', 'cuvette', 'sentbon', 'toulemonde', 'abidbol']
surnames = ['juliette', 'vincent', 'manuel', 'romain', 'sophie', 'claire',
            'maxime', 'pierre', 'jean', 'paul', 'jack', 'claudie']
operator = ['gmail.com', 'hotmail.fr', 'yahoo.com', 'lewagon.org']

User.destroy_all

10.times do
  User.create(email: "#{ surnames.sample }-#{ names.sample }@#{ operator.sample }",
    password: 'xxx')
end
