# dineOut
dineOut ist ein Tool zur Koordination von Mittagsaktivitäten

## Installation
* Repository auf lokalen Rechner klonen:

         git clone https://github.com/liebeslenchen/dineout.git

* In den Ordner dineout wechseln:

         cd dineout

* Gemset anlegen und benutzen:

         rvm gemset create dineout
         rvm gemset use dineout

* Gems auf den aktuellsten Stand bringen:

         gem update
         gem install rails
         
* dineout spezifische Gems installieren:

         bundle install
         
* Demodaten und Testdaten anlegen:

         rake db:reset
         rake db:test:prepare

* dineOut starten

          rails server

### Probleme bei der Installation?
* Dies hat uns damals geholfen:

          sudo aptitude install libv8-dev
          sudo apt-get install g++
          sudo apt-get install bundle-essential

## Start
### Übersicht
Um euch bei dineOut anzumelden haben wir die folgenden Benutzer angelegt (nur User, keine Adminfunktion):
* Benutzername: Peter, Passwort: passit
* Benutzername: Thomas, Passwort: passit

Außerdem gibt es noch einen Admin (mit den Rechten um alles zu bearbeiten und ActiveAdmin zu nutzen):
* Benutzername: Admin, Passwort: passit

#### Weitere Benutzer (Passwort ist immer "passit")
* Lean, Gamze, Marlen, Felix, Verena, Julia,Lukas, Max, Simon, Laura, Linda, Michael, Stefan, Anne

## Heroku
http://dineout.herokuapp.com/

