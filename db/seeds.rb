house = Establishment.find_or_create_by(name: "house")
springfield = Establishment.find_or_create_by(name: "Springfield Manor")

daniel = Occupant.find_or_create_by(name: "Daniel")
daniel.password = "password"
mary = Occupant.find_or_create_by(name: "Mary")
mary.password = "password"
sherry = Occupant.find_or_create_by(name: "Sherry")
sherry.password = "password"


diapers = Good.find_or_create_by(name: "Diapers")
rags = Good.find_or_create_by(name: "Rags")
vinegar = Good.find_or_create_by(name: "vinegar")
opener = Good.find_or_create_by(name: "Bottle Opener")
formula = Good.find_or_create_by(name: "Formula")
bread = Good.find_or_create_by(name: "Bread")
peach_tree = Good.find_or_create_by(name: "Peach Tree")
pants = Good.find_or_create_by(name: "Pants", description: "32X30 black dress pants")

groceries = Tag.find_or_create_by(name: "Groceries")
cleaning = Tag.find_or_create_by(name: "Cleaning")
hardware = Tag.find_or_create_by(name: "Hardware")
plants = Tag.find_or_create_by(name: "Plants")
baby = Tag.find_or_create_by(name: "Baby")
restaurant = Tag.find_or_create_by(name: "Restaurant")
clothing = Tag.find_or_create_by(name: "Clothing")
hell = Tag.find_or_create_by(name: "Hell")

walmart = Shop.find_or_create_by(name: "Wal-mart")
home_depot = Shop.find_or_create_by(name: "Home Depot")
martins = Shop.find_or_create_by(name: "Martins")


house.occupants << [daniel, mary]
springfield.occupants << [sherry, daniel, mary]

daniel.goods << [diapers, opener, formula, bread, peach_tree]
mary.goods << [bread, rags, peach_tree, opener]
sherry.goods << [vinegar, rags]

diapers.tags << [groceries,baby]
rags.tags << [groceries,cleaning,hardware]
vinegar.tags << [groceries]
opener.tags << [groceries,restaurant]
formula.tags << [groceries,baby]
bread.tags << [groceries]
peach_tree.tags << [plants,hardware]
pants.tags << [clothing]

walmart.tags << [groceries,clothing,baby,hell]
home_depot.tags << [hardware,plants]
martins.tags << [groceries,baby]
