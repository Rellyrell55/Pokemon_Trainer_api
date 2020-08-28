# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.destroy_all
Trainer.destroy_all
Join.destroy_all


pikachu = Pokemon.create(name:"Pikachu")
charmander = Pokemon.create(name:"Charmander")
squirtal = Pokemon.create(name:"Squirtal")
jiggly = Pokemon.create(name:"Jiggly Puff")
eevee = Pokemon.create(name:"Eevee")
onix = Pokemon.create(name:"Onix")
vulpix = Pokemon.create(name:"Vulpix")

ash = Trainer.create(name:"Ash Catch'em")
misty = Trainer.create(name:"Misty")
misty = Trainer.create(name:"Misty")
brock = Trainer.create(name:"Brock")
rocket = Trainer.create(name:"Team Rocket")

Join.create(pokemon: pikachu, trainer: ash)
Join.create(pokemon: squirtal, trainer: ash)
Join.create(pokemon: jiggly, trainer: misty)
Join.create(pokemon: eevee, trainer: misty)
Join.create(pokemon: onix, trainer: brock)
Join.create(pokemon: vulpix, trainer: rocket)
