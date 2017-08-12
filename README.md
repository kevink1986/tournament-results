## Udacity full stack web developer - Tournament results

## Run Locally

1. Clone this repo with [https://github.com/kevink1986/restaurant-results.git]

2. cd restaurant-results

3. Launch the Vagrant VM from the command line:
   $ vagrant up
   $ vagrant ssh

4. cd /vagrant/restaurant-results

5. Connect to postgress from the command line on your virtual machine:
   $ psql

6. Use the command CREATE DATABASE tournament to create a database

7. Use the command \i tournament.sql to import all tables

8. exit postgress with the command \q

9. Run this project on your virtual machine from the command line:
   $ python tournament_test.py