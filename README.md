# system-sa-learn
Bash script for spamassassin bayesian database update as specifiedhere: http://untroubled.org/spam/

## Initial spam db 
Load basic db as specified here: https://geekthis.net/post/spamassassin-training/
```
sa-learn --backup > bayesian.database.20220102 && gzip bayesian.database.20220102
wget http://artinvoice.hu/spams/bayesian.database.gz && gunzip bayesian.database.gz && sa-learn --restore bayesian.database && rm -rf bayesian.database
sa-learn --spam /var/mail/vhosts/*/*/.Junk/cur && sa-learn --ham /var/mail/vhosts/*/*/cur > /dev/null 2>&1
sa-learn --dump magic
```