# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS SEEDS...................................................................

surnames = ['juliette', 'vincent', 'manuel', 'romain', 'pierre', 'paul', 'jack',
          'claudie', 'maxime', 'alex', 'marion', 'sophie', 'elise']
names = ['dupond', 'durand', 'doe', 'lavigne', 'cuvette', 'daniels']
operator = ['gmail.com', 'yahoo.fr', 'hotmail.com', 'lewagon.org']

User.destroy_all

10.times do
  User.create(email: "#{ surnames.sample }-#{ names.sample }@#{ operator.sample }", password:'***')
end
#..............................................................................



