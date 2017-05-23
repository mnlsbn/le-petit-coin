# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS SEEDS--------------------------------------------------------------------

def new_user
  names = ['daniels', 'dupont', 'durand', 'cuvette', 'sentbon', 'toulemonde', 'abidbol']
  surnames = ['juliette', 'vincent', 'manuel', 'romain', 'sophie', 'claire',
              'maxime', 'pierre', 'jean', 'paul', 'jack', 'claudie']
  operators = ['gmail.com', 'hotmail.fr', 'yahoo.com', 'lewagon.org']


  User.create(email: "#{ surnames.sample }-#{ names.sample }@#{ operators.sample }",
    password: 'xxx')
end


#WCS SEEDS----------------------------------------------------------------------


wcs_attributes = [
  {
  name: 'Super Wc',
  description: 'Wc propre et bien aéré',
  address: '121 Rue Saint-André, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Idéal gens pressés',
  description: 'se trouve dans la cour, donc accès rapide',
  address: '59-61 Rue du Metz, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Belle Cuvette',
  description: 'Toilettes refaits à neuf en début d\'année',
  address: '32-36 Rue Saint-Sébastien, 59800 Lille, France',
  availability: true
  },
  {
  name: 'P\'tit coin d\'tranquilité',
  description: 'WC au calme pour faire son affaire tranquille',
  address: '2-4 Rue du Béguinage, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Bon toilette',
  description: 'Toilet de bon standing, pas de fuite à signaler',
  address: '1 Rue du Metz, 59800 Lille, France',
  availability: true
  },
  {
  name: 'WC propres',
  description: 'Ménage fait après chaque passage',
  address: '15 Rue de la Halle, 59800 Lille, France',
  availability: true
  },
  {
  name: 'The place to be!',
  description: 'Enjoy a perfect toilet and make the most of your commission',
  address: '3 Rue de Jemmapes, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Have a seat :-)',
  description: 'Enjoy a well-situated WC with good magazines to read',
  address: '102 Rue de Jemmapes, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Tranquilou bidou',
  description: 'no stress, papier, journeaux et bedos!',
  address: '116 Rue de Jemmapes, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Petit Coin sympa',
  description: 'Petit Wc bien placé, à l\'abris des regards',
  address: '146 Rue Saint-André, 59800 Lille, France',
  availability: true
  },
  {
  name: 'Wc avec vue',
  description: 'la fenêtre des WC donne sur un petit jardin arboré',
  address: '220 Rue de la Cense aux Blés, 59800 Lille, France',
  availability: true
  },
  {
  name: 'El Pissato',
  description: 'Caramba! prend\'plaisir ici moun ami, c\est toi lé rey',
  address: '8 Rue Maracci, 59800 Lille, France',
  availability: true
  }
]

# Users are created within creation of WC.
# In the end, each new user is link to only one WC
# no cases of wc multi-ownership here

Wc.destroy_all
User.destroy_all

wcs_attributes.each do |wc|
  user = new_user #call method
  wc_new = Wc.new(wc)
  wc_new.user_id = user.id
  wc_new.save
end
