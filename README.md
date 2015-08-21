Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

Warning: BETA.

Current Movim version : 20150820.

**Changelog**

0.8b ?
- Added to language selection : ar, de, es, it, ja, nl, ru

0.7b 2015-08-20
- Update to upstream Movim 20150820 to fix #5

0.6b 2015-08-19
- Replace 'www-data' system user with 'movim'
- Update to upstream Movim 20150818.

0.5b 2015-08-17
- Add default port (9537)

0.4b 2015-08-14
- Add restart command to movim daemon after upgrade
- Add licence

0.3b 2015-08-12
- Check if admin exists
- Check if admin password is not empty

0.2b 2015-08-12
- Add php5-cli as required
- Fixed a warning for sysvinit script installation
- Fixed a LSB warning with movim sysvinit script

0.1b 2015-08-12
- Beta release

**Installation**

    yunohost app install https://github.com/src386/movim_ynh

**Options**

* domain : Your domain name.
* path : Path for you Movim pod (will be https://example.com/path).
* admin : Who can access ?q=admin (pod options).
* password : Password to access ?q=admin.
* language : Pod language, currently en or fr.
* public_site : Pod protected by Yunohost SSO portal or not.
* port : Port for Movim daemon. Default is 9537, a check is performed before installation.

**Pod configuration**

    https://example.com/movim/?q=admin

Username and password are definied during installation.

**Upgrade**

    yunohost app upgrade movim -u https://github.com/src386/movim_ynh

**Remove**

    yunohost app remove movim

**Notes**

* URL rewriting is disabled (experimental feature)
* No SSO auto login

**Help**

support@conference.yunohost.org src386_
