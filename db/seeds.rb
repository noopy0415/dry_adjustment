# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drier.create(name:"80石",  scale:80/5, note:"")
Drier.create(name:"40石",  scale:40/5, note:"")
Drier.create(name:"65石①", scale:1,    note:"")
Drier.create(name:"40石②", scale:1,    note:"")
Trader.create(name:"持帰り", note:"")
Trader.create(name:"JA", note:"")
Trader.create(name:"松尾農材", note:"")
Trader.create(name:"村木", note:"")
Trader.create(name:"木村", note:"")
