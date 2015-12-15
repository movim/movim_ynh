Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

You need a "valid" (example: StartSSL) certificate to use Movim, auto-signed is not allowed.

Current Movim version : 0.9 git2015-12-15

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

Username and password are defined during installation.

**Upgrade**

    yunohost app upgrade movim -u https://github.com/src386/movim_ynh

**Remove**

    yunohost app remove movim

**Notes**

* URL rewriting is disabled (experimental feature)
* No SSO (auto login) yet

**Public Pod & Whitelisting**

* Public pod = Yes : anyone can connect in your Movim pod using its own JID
* Public pod = No : Whitelist allows only JID from your Yunohost to login*

If you want to allow more domains, connect to yourserver.yourdomain.org/movim/?q=admin then add domains in the whitelist.

**Help**

support@conference.yunohost.org src386_ or just open an issue.
