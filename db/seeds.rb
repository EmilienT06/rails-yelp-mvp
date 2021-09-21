# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

porteno = Restaurant.create(name: 'Porteno', address: '4 Rue Lepic', category: 'italian')
mama = Restaurant.create(name: 'Mama Pizza', address: '50 Rue Dorée', category: 'italian', phone_number: '+3346456')
pekin = Restaurant.create(name: 'Pekin Food', address: '5R5 Contonese Street', category: 'chinese')
tartare = Restaurant.create(name: 'Les Tontons', address: '4 Rue R.Losserand', category: 'french')
moule = Restaurant.create(name: 'Moulue', address: '4 Rue Atomium', category: 'beligian')

Review.create(content: 'Great', rating: 4, restaurant_id: porteno.id)
Review.create(content: 'Average', rating: 2, restaurant_id: mama.id)
Review.create(content: 'Bad', rating: 1, restaurant_id: pekin.id)
Review.create(content: 'Amazing', rating: 5, restaurant_id: tartare.id)
Review.create(content: 'Disgusting', rating: 0, restaurant_id: moule.id)
