# Installation

    ./install.php https://github.com/iamcal/thisismyj.am

You'll need to manaully place the following secrets:

* `secrets/cookie_secret` - the cookie signing secret - can be fresh per host
* `secrets/twitter_oauth_secret` - OAuth secret key from Twitter
* `secrets/duo_secret_key` - secret app key from Duo

**NOTE:** The jam images are stored under `www/img/*` and are _not currently in Git_, so you'll
need to migrate them manually. One day I should put them on S3 or whatever.
