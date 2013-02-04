# encoding: UTF-8

# Admin role
admin = User.create email: 'admin@dineout.com', password: 'passit', password_confirmation: 'passit'
admin.add_role :admin


#cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#Mayor.create(:name => 'Emanuel', :city => cities.first)

dinertypes = DinerType.create([{ :name => 'Bäckerei' }, { :name => 'Bistro' }, 
		{ :name => 'Café' }, { :name => 'Kantine' }, 
		{ :name => 'Restaurant' }, { :name => 'Schnellrestaurant' }, 
		{ :name => 'Imbiss' }, { :name => 'Eisdiele' }, 
		{ :name => 'Lounge' }, { :name => 'Kneipe' }, { :name => 'Pizzeria'}, 
		{ :name => 'Mensa' }])

mealtypesar = Mealtype.create([{ :name => 'Pizza' }, { :name => 'Pasta' }, 
		{ :name => 'Döner' }, { :name => 'Belegte Brötchen' }, 
		{ :name => 'Eintöpfe' }, { :name => 'Suppen' }, 
		{ :name => 'Vegetarisches' }, { :name => 'Salat' }, 
		{ :name => 'Gyros' }])


Diner.create city: 'Münster', 
	name: 'Stadtbäckerei Münster - Filiale Ludgeriplatz', 
	number: '11', 
	phone: '0251-3909104', 
	street: 'Ludgeriplatz/Hammer Str.', 
	time: 'Werktags 06:30-18:00 Uhr', 
	url: 'http://www.stadtbaeckerei-muenster.de/', 
	urlmaps: 'http://maps.google.de/maps?q=Hammer+Stra%C3%9Fe+1+48153+M%C3%BCnster&hl=de&ie=UTF8&ll=51.955163,7.626421&spn=0.006546,0.021136&sll=51.956049,7.629018&sspn=0.006546,0.021136&hnear=Hammer+Stra%C3%9Fe+1,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16', 
	zipcode: '48153',
	:diner_type => dinertypes[0],
	:mealtypes => [mealtypesar[3], mealtypesar[7]]

Diner.create city: 'Münster', 
	name: 'Pizza-Express', 
	number: '11', 
	phone: '0251/53 95 67 77', 
	street: 'Hafenstraße', 
	time: 'Mo–Fr 17:00 – 01:00 Uhr
			Sa 16:00 – 01:00 Uhr
			So 12:00 – 24:00 Uhr', 
	url: 'https://pizza.de/pizza-express-muenster-hafenstr-11?lgs=124221&ed=238998', 
	urlmaps: 'https://maps.google.de/maps?q=Hafenstr.+11+48153+M%C3%BCnster&hl=de&ie=UTF8&sll=51.950085,7.624097&sspn=0.287359,0.703125&hnear=Hafenstra%C3%9Fe+11,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16', 
	zipcode: '48153',
	:diner_type => dinertypes[10],
	:mealtypes => [mealtypesar[0], mealtypesar[1]]

Diner.create city: 'Münster', 
	name: 'Uni-Bistro', 
	number: '31', 
	phone: '0251/22 99 7', 
	street: 'Steinfurter Straße', 
	time: 'Mo–Fr 11:30 – 15:00 Uhr und 17:00 – 23:00 Uhr Sa–So 12:00 – 23:00 Uhr', 
	url: 'https://pizza.de/uni-bistro-muenster-steinfurter-str-31?lgs=124221#/framekinfo.htm', 
	urlmaps: 'https://maps.google.de/maps?q=Steinfurter+Str.+31+48149+M%C3%BCnster&hl=de&ie=UTF8&sll=51.955039,7.62851&sspn=0.008979,0.021973&hnear=Steinfurter+Stra%C3%9Fe+31,+48149+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48149',
	:diner_type => dinertypes[5],
	:mealtypes => [mealtypesar[0], mealtypesar[1]]

Diner.create city: 'Münster', 
	name: 'Cena'"'"'s Pizza', 
	number: '40', 
	phone: '0251/87 13 68 30', 
	street: 'Düesbergweg', 
	time: 'Mo–Fr 16:30 – 23:00 Uhr Sa–So 14:00 – 23:00 Uhr', 
	url: 'www.cenas-pizza.de', 
	urlmaps: 'https://maps.google.de/maps?q=D%C3%BCesbergweg+40+48153+M%C3%BCnster&hl=de&ie=UTF8&sll=51.96955,7.611654&sspn=0.008976,0.021973&hnear=D%C3%BCesbergweg+40,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48153',
	:diner_type => dinertypes[5],
	:mealtypes => [mealtypesar[0], mealtypesar[1]]

#Diner.create city: 'Münster', 
#	name: 'XXX', 
#	number: 'XXX', 
#	phone: 'XXX', 
#	street: 'XXX', 
#	time: 'XXX', 
#	url: 'XXX', 
#	urlmaps: 'XXX',
#	zipcode: 'XXX',
#	:diner_type => dinertypes[XXX],
#	:mealtypes => [mealtypesar[XXX], mealtypesar[XXX]]


