Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

Warning: BETA.

You need a valid SSL certificate to use Movim, auto-signed is not allowed.

Current Movim version : 0.9 git2015-08-25

**Changelog**

0.9b 2015-0
- Update to Movim 0.9 git2015-08-25
- Add notes in README about public pods & whitelisting
- script/install now check if path is empty.
- script/remove now delete /etc/php/fpm/pool.d/movim.conf (fix #8).
- script/remove now delete 'movim' user only after Movim service is stopped.
- script/remove now stop php5-fpm in order to remove Movim user
- script/update now updates php dependancies (composer update).
- conf/movim.service now has a PID and a syslog identifier.
- conf/movim.service starts after mysql.service.
- conf/movim.init has low priority and should start after mysql.
- conf/nginx.conf : proxy_read_timeout and proxy_send_timeout removed (default is 60s)
- conf/php-fpm.conf add timezone parameter.

0.8b 2015-08-24
- Added language selection : ar, de, es, it, ja, nl, ru
- Fix URL in manifest.json (was https://https://...)
- Public/Private policy changed. The SSO portal is not used anymore
  But when a pod is marked as "private", only accounts with @yourdomain.com are able to connect.
  This change was necessary for public content (blog)
- Add dedicated php-fpm pool for Movim
- Protect /log and /config properly
- Update to upstream Movim 20150824
- Fix #6 and #7

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

**Public Pod & Whitelisting**

* Public pod = Yes : anyone can connect in your Movim pod using its own JID
* Public pod = No : Whitelist allows only JID from your Yunohost to login*

If you want to allow more domains, connect to yourserver.yourdomain.org/movim/?q=admin then add domains in the whitelist.

**Help**

support@conference.yunohost.org src386_
