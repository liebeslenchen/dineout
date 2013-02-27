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

### Weitere Funktionen
Unter Diner findet sich alles rund um die Verwaltung von diners.
<br>Um den Benutzeraccount anzupassen muss man auf den Benutzernamen klicken.
 
## Heroku
http://dineout.herokuapp.com/

## Rails
Version: 3.2.9

## Verwendete Gems
* haml (3.1.7)
* haml-rails (0.3.5)
* rspec (2.12.0) 
* rspec-rails (2.12.0)
* factory_girl (4.1.0) 
* factory_girl_rails (4.1.0)
* guard-rspec (2.3.3) 
* faker (1.1.2) 
* capybara (2.0.1)
* sqlite3 (1.3.6) 
* therubyracer (0.11.0)
* twitter-bootstrap-rails (2.1.9) 
* less-rails (2.2.6) 
* libv8 (3.11.8.4) 
* devise (2.1.2)
* rolify (3.2.0) 
* activeadmin (0.5.1) 
* cancan (1.6.8)
