# encoding: UTF-8

# Admin role
admin = User.create email: 'admin@dineout.com', password: 'passit', password_confirmation: 'passit'
admin.add_role :admin


Diner.create city: 'Münster', name: 'Joeys - Sued West', number: '25', phone: '0251-539300', street: 'Lala Strasse', time: 'täglich von 11-23 Uhr' , url: 'http://www.joeys.de/muenster', urlmaps: 'http://maps.google.de/', zipcode: '48145'
Diner.create city: 'Münster', name: 'Papa George', number: '51', phone: '0251-664263', street: 'Wolbecker Strasse', time: 'täglich von 11-0 Uhr' , url: 'http://papageorge.ms/Imbiss/index.html', urlmaps: 'https://maps.google.de/maps?q=Wolbecker+Stra%C3%9Fe+51,+M%C3%BCnster&hl=de&ie=UTF8&sll=51.950085,7.624097&sspn=0.287359,0.615921&oq=Wolbecker+Stra%C3%9Fe+51&hnear=Wolbecker+Stra%C3%9Fe+51,+48155+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16', zipcode: '48155'
Diner.create city: 'Münster', name: 'Mocca D'"'or", number: '14-16', phone: '0251-664263', street: 'Rothenburg', time: 'täglich von 9-1 Uhr' , url: 'http://www.mocca-d-or.de/', urlmaps: 'https://maps.google.de/maps?q=Rothenburg+14-16,+48143+M%C3%BCnster&hl=de&ie=UTF8&sll=51.953867,7.639747&sspn=0.017959,0.038495&hnear=Rothenburg+14,+48143+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16', zipcode: '48143'
Diner.create city: 'Münster', name: 'Stadtbäckerei Münster - Filiale Ludgeriplatz', number: '1', phone: '0251-3909104', street: 'Ludgeriplatz/Hammer Str.', time: 'Werktags 06:30-18:00 Uhr', url: 'http://www.stadtbaeckerei-muenster.de/', urlmaps: 'http://maps.google.de/maps?q=Hammer+Stra%C3%9Fe+1+48153+M%C3%BCnster&hl=de&ie=UTF8&ll=51.955163,7.626421&spn=0.006546,0.021136&sll=51.956049,7.629018&sspn=0.006546,0.021136&hnear=Hammer+Stra%C3%9Fe+1,+48153+M%C3%BCnster,+Nordrhein-Westfalen&t=m&z=16', zipcode: '48153'

DinerType.create name: 'Bäckerei'
DinerType.create name: 'Bistro'
DinerType.create name: 'Café'
DinerType.create name: 'Kantine'
DinerType.create name: 'Restaurant'
DinerType.create name: 'Schnellrestaurant'
DinerType.create name: 'Imbiss'
DinerType.create name: 'Eisdiele'
DinerType.create name: 'Lounge'
DinerType.create name: 'Kneipe'

Mealtype.create name: 'Pizza'
Mealtype.create name: 'Pasta'
Mealtype.create name: 'Döner'
Mealtype.create name: 'Belegte Brötchen'
Mealtype.create name: 'Eintöpfe'
Mealtype.create name: 'Vegetarisches'
Mealtype.create name: 'Salat'
Mealtype.create name: 'Gyros'


