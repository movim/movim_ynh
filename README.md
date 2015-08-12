Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

PACKAGE NOT READY YET
DO NOT USE

Current Movim version : 20150810.

**Changelog**

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

**Help**

support@conference.yunohost.org src386_
