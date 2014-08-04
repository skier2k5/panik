panik
=====

#Getting started / Initial setup
0. cd into the panik repo folder $cd /path/to/panik
1. Install Ruby Version Manager (rvm) Stable Version $\curl -sSL https://get.rvm.io | bash -s stable --ruby
2. Install Ruby version 2.1.1: $rvm install ruby-2.1.1
3. Install Bundle $sudo gem install bundle
4. Run $bundle install
5. If you run into an error with installing mysql, run $brew install mysql
6. Install Pow for Rails $curl get.pow.cx | sh
7. Run $ln -s ~/Documents/panik kutorable
8. Start your MySQL server $mysql.server start
9. Create db $rake db:create
10. Run db migrations $rake db:migrate
11. Run $rake db:seed
12. Run $rvm gemset use global
13. Run $bundle install