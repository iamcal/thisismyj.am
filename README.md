# Installation

    cd /var/www/html
    git clone git@github.com:iamcal/thisismyj.am.git
    cd thisismyj.am
    ln -s /var/www/html/thisismyj.am/site.conf /etc/apache2/sites-available/thisismyj.am.conf
    a2ensite thisismyj.am
    service apache2 reload
    cd db
    ./init_db.sh

You'll need to manaully place the following secrets:

* `secrets/cookie_secret` - the cookie signing secret - can be fresh per host
* `secrets/twitter_oauth_secret` - OAuth secret key from Twitter
