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

* dineOut starten:

          rails server

### Probleme bei der Installation?
* Dies hat uns damals geholfen:

          sudo aptitude install libv8-dev
          sudo apt-get install g++
          sudo apt-get install bundle-essential

## Start
### Anmeldung
Um euch bei dineOut anzumelden haben wir die folgenden Benutzer angelegt (nur User, keine Adminfunktion):
* Benutzername: Peter, Passwort: passit
* Benutzername: Thomas, Passwort: passit

Außerdem gibt es noch einen Admin (mit den Rechten um alles zu bearbeiten und ActiveAdmin zu nutzen):
* Benutzername: Admin, Passwort: passit

#### Weitere Benutzer (Passwort ist immer "passit")
* Lean, Gamze, Marlen, Felix, Verena, Julia,Lukas, Max, Simon, Laura, Linda, Michael, Stefan, Anne

### Events
Hier werden die Essensevents angezeigt. Hierbei ist zu berücksichtigen, 
dass nur die aktuellen Events, die an dem heutigen Datum angelegt wurden, angezeigt werden.
Um die Demodaten der Events zu aktualisieren könnt ihr entweder

           rake db:reset        

ausführen. Oder das folgende Sql-Statemant auf der Datenbank ausführen: 
<br>(um einfachen Zugriff auf die Datenbank zu bekommen eignet sich das Firefox Add-On "SQLite Manager")

           update events set dtime = datetime('now') where id in (1,2,3,4)

Funktion:
* Gäste können sich Events anschauen. 
* Benutzer können Events anlegen (sie werden zum Ersteller und sind automatisch auch Teilnehmer)
* andere Benutzer können an den Events teilnehmen
* der Ersteller des Events kann es als einziger bearbeiten
* das Event löschen, können der Ersteller und User mit Adminrechten

### Administration
Alle Benutzer die Admin Rechte haben, können unter Administration zu ActiveAdmin gelangen. Dort können Dinerarten 
und Speisetypen verwaltet werden. 
<br>Außerdem kann man die Benutzer verwalten, z.B. Adminrechte vergeben/entziehen.

## Heroku
http://dineout.herokuapp.com/

## Verwendete Gems
* haml-rails
* rspec-rails
* factory_girl_rails
* guard-rspec
* faker
* capybara
* sqlite3
* therubyracer
* twitter-bootstrap-rails
* less-rails
* devise
* rolify
* activeadmin
* cancan
