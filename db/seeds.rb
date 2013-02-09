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
		{ :name => 'Gyros' }, { :name => 'TexMex' }, 
		{ :name => 'Asiatisch' }, { :name => 'Indisch' }, { :name => 'Querbeet' }, 
		{ :name => 'Steak' }])


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

Diner.create city: 'Münster', 
	name: 'Pizza Factory', 
	number: '34', 
	phone: '0251/871 66 77', 
	street: 'Hohenzollernring', 
	time: 'täglich 11:00 – 22:50 Uhr', 
	url: 'https://pizza.de/pizza-factory-muenster-hohenzollernring-34?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=Hohenzollernring+34+48145+M%C3%BCnster&hl=de&ie=UTF8&sll=51.950085,7.624097&sspn=0.298363,0.727158&hnear=Hohenzollernring+34,+48145+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48145',
	:diner_type => dinertypes[5],
	:mealtypes => [mealtypesar[0], mealtypesar[1]]

Diner.create city: 'Münster', 
	name: 'Pizza Texas', 
	number: '20', 
	phone: '0251/97431070', 
	street: 'Rincklakeweg', 
	time: 'täglich 11:00 – 23:00 Uhr', 
	url: 'https://pizza.de/pizza-texas-muenster-rincklakeweg-20?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=Rincklakeweg+20+48153+M%C3%BCnster&hl=de&ie=UTF8&sll=51.95722,7.6473&sspn=0.009322,0.022724&hnear=Rincklakeweg+20,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48153',
	:diner_type => dinertypes[5],
	:mealtypes => [mealtypesar[9], mealtypesar[0], mealtypesar[1]]

Diner.create city: 'Münster', 
	name: 'Hong Bin', 
	number: '49', 
	phone: '0251/22 888', 
	street: 'Kanalstr', 
	time: 'Mo–Sa 11:30 – 14:30 Uhr und 17:30 – 22:00 Uhr; So 11:30 – 22:00 Uhr', 
	url: 'Internet: www.hong-bin-taxi.de ', 
	urlmaps: 'https://maps.google.de/maps?q=Kanalstr.+49+48147+M%C3%BCnster&hl=de&ie=UTF8&sll=51.95722,7.6473&sspn=0.009322,0.022724&hnear=Kanalstra%C3%9Fe+49,+48147+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48147',
	:diner_type => dinertypes[4],
	:mealtypes => [mealtypesar[10], mealtypesar[5]]

Diner.create city: 'Münster', 
	name: 'Shanghai Express', 
	number: '22', 
	phone: '0251/564 77', 
	street: 'Verspoel', 
	time: 'Mo–Fr 12:00 – 14:30 Uhr und 17:00 – 21:45 Uhr; Sa–So 12:00 – 21:45 Uhr', 
	url: 'https://pizza.de/china-restaurant-shanghai-muenster-verspoel-22?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=Verspoel+22+|+48143+M%C3%BCnster&hl=de&ie=UTF8&sll=51.971862,7.632042&sspn=0.009319,0.022724&hnear=Verspoel+22,+48143+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48143',
	:diner_type => dinertypes[4],
	:mealtypes => [mealtypesar[5], mealtypesar[10]]

Diner.create city: 'Münster', 
	name: 'Papa George', 
	number: '131', 
	phone: '0251/67 44 544', 
	street: 'Wolbecker Str.', 
	time: 'Mo–Fr 11:00 – 22:15 Uhr; Sa–So 12:00 – 22:15 Uhr', 
	url: 'https://pizza.de/papa-george-muenster-wolbecker-str-131?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=Wolbecker+Str.+131+48155+M%C3%BCnster&hl=de&ie=UTF8&ll=51.955044,7.649746&spn=0.009323,0.022724&sll=51.957668,7.628075&sspn=0.009322,0.022724&hnear=Wolbecker+Stra%C3%9Fe+131,+48155+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48155',
	:diner_type => dinertypes[6],
	:mealtypes => [mealtypesar[8], mealtypesar[0], mealtypesar[7]]

Diner.create city: 'Münster', 
	name: 'Berlin Döner', 
	number: '132', 
	phone: '0251/9720982', 
	street: 'Friedrich-Ebert-Str.', 
	time: 'Mo geschlossen; Di–Do 11:00 – 22:00 Uhr; Fr 11:00 – 23:00 Uhr; Sa–So 12:00 – 21:30 Uhr', 
	url: 'https://pizza.de/berlin-doener-muenster-friedrich-ebert-str-132?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=Friedrich-Ebert-Str.+132+48153+M%C3%BCnster&hl=de&ie=UTF8&sll=51.955044,7.649746&sspn=0.009323,0.022724&hnear=Friedrich-Ebert-Stra%C3%9Fe+132,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48153',
	:diner_type => dinertypes[6],
	:mealtypes => [mealtypesar[2], mealtypesar[7]]

Diner.create city: 'Münster', 
	name: 'Casa Mexicana', 
	number: '433', 
	phone: '0251/67498670', 
	street: 'Albersloher Weg', 
	time: 'Mo–Sa 12:00 – 14:00 Uhr und 17:30 – 22:30 Uhr; So 12:00 – 22:00 Uhr', 
	url: '48167', 
	urlmaps: 'https://maps.google.de/maps?q=Albersloher+Weg+433+48167+M%C3%BCnster&hl=de&ie=UTF8&sll=51.945331,7.630133&sspn=0.009325,0.022724&hnear=Albersloher+Weg+433,+M%C3%BCnster+48167+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48167',
	:diner_type => dinertypes[4],
	:mealtypes => [mealtypesar[9], mealtypesar[7], mealtypesar[8], mealtypesar[6]]

Diner.create city: 'Münster', 
	name: 'Indian Curry House', 
	number: '26', 
	phone: '0251/526378', 
	street: 'Hammer Str.', 
	time: 'täglich 18:00 – 21:30 Uhr', 
	url: 'https://pizza.de/indian-curry-house-muenster-hammer-str-26?lgs=124312', 
	urlmaps: 'https://maps.google.de/maps?q=+Hammer+Str.+26+|+48153+M%C3%BCnster&hl=de&ie=UTF8&sll=51.928607,7.667464&sspn=0.009328,0.022724&hnear=Hammer+Stra%C3%9Fe+26,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48153',
	:diner_type => dinertypes[4],
	:mealtypes => [mealtypesar[11], mealtypesar[6]]

Diner.create city: 'Münster', 
	name: 'Mensa DaVinci', 
	number: '8', 
	phone: '0251/83 - 23121', 
	street: 'Leonardo-Campus', 
	time: 'Kalte Küche 8:30 - 14:30 Uhr; Warmspeisenausgabe 11:30 14:30 Uhr', 
	url: 'http://www.studentenwerk-muenster.de/essen-a-trinken/mensen/da-vinci', 
	urlmaps: 'https://maps.google.de/maps?q=Leonardo-Campus+8+48149+M%C3%BCnster&hl=de&ie=UTF8&sll=51.953089,7.625509&sspn=0.009323,0.022724&hnear=Leonardo-Campus+8&t=m&z=16',
	zipcode: '48149',
	:diner_type => dinertypes[11],
	:mealtypes => [mealtypesar[12]]

Diner.create city: 'Münster', 
	name: 'Mensa am Aasee', 
	number: '11', 
	phone: '0251/ 83 79534', 
	street: 'Bismarckallee', 
	time: 'Montag bis Freitag: 07:00 - 22:00 Uhr; Speisenausgabe 11.45 - 14.30 Uhr; 14.30 - 17.00 Uhr (Salattheke / Imbiss); 17.30 - 21.30 Uhr (Abendbuffet); Samstag: 11:00 - 15:00 Uhr; Speisenausgabe von 12:00 bis 14:30', 
	url: 'http://www.studentenwerk-muenster.de/de/essen-a-trinken/mensen/mensa-am-aasee', 
	urlmaps: 'https://maps.google.de/maps?q=Bismarckallee+11+48151+M%C3%BCnster&hl=de&ie=UTF8&sll=51.974523,7.599724&sspn=0.009319,0.022724&hnear=Bismarckallee+11&t=m&z=16',
	zipcode: '48151',
	:diner_type => dinertypes[11],
	:mealtypes => [mealtypesar[12]]

Diner.create city: 'Münster', 
	name: 'Mensa am Ring', 
	number: '61', 
	phone: ' 0251/ 83 - 79627', 
	street: 'Domagkstraße', 
	time: 'Montag - Freitag: Speisenausgabe von 11:30 bis 14:00', 
	url: 'http://www.studentenwerk-muenster.de/de/essen-a-trinken/mensen/mensa-am-ring', 
	urlmaps: 'https://maps.google.de/maps?q=Domagkstra%C3%9Fe+61+48149+M%C3%BCnster&hl=de&ie=UTF8&sll=51.95558,7.616914&sspn=0.009323,0.022724&hnear=Domagkstra%C3%9Fe+61,+48149+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48149',
	:diner_type => dinertypes[11],
	:mealtypes => [mealtypesar[12]]

Diner.create city: 'Münster', 
	name: 'Pierhouse', 
	number: '42', 
	phone: '(02 51) 8 99 79 99', 
	street: 'Hafenweg', 
	time: 'Montags - Donnerstags 11:00 - 2:00 Uhr; Freitags 11:00 - 3:00 Uhr; Samstags 12:00 - 3:00 Uhr; Sonntags 12:00 - 1:00 Uhr', 
	url: 'http://www.pierhouse.de/', 
	urlmaps: 'https://maps.google.de/maps?q=Hafenweg+22+48155+M%C3%BCnster&hl=de&ie=UTF8&sll=51.96529,7.59977&sspn=0.009321,0.022724&hnear=Hafenweg+22,+48155+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16',
	zipcode: '48155',
	:diner_type => dinertypes[5],
	:mealtypes => [mealtypesar[9], mealtypesar[13]]

Diner.create city: 'Münster', 
	name: 'Cafe Med', 
	number: '26 A', 
	phone: '0251 6749595', 
	street: 'Hafenweg', 
	time: 'Montag 12:00-14:30, 18:00-00:00; Dienstag 12:00-14:30, 18:00-00:00; Mittwoch	12:00-14:30, 18:00-00:00; Donnerstag 12:00-14:30, 18:00-00:00; Freitag 12:00-14:30, 18:00-01:00; Samstag 12:00-01:00; Sonntag 12:00-01:00', 
	url: 'http://www.qype.com/place/68628-Cafe-Med-Muenster', 
	urlmaps: 'https://maps.google.de/maps?q=cafe+med&ie=UTF8&fb=1&gl=de&hq=cafe+med&hnear=0x47b9bac399f760df:0x21eb4ca77bf328eb,M%C3%BCnster&cid=0,0,17397645032292026962&t=m&z=16&iwloc=A',
	zipcode: '48155',
	:diner_type => dinertypes[4],
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


