Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

It is recommended to use a "valid" certificate to use Movim, auto-signed is sometimes problematic. You might want to take a look a StartSSL or Let's Encrypt.

Provided Movim version : 0.11 git2017-08-24

Please read CHANGELOG.

**Installation**

    yunohost app install https://github.com/movim/movim_ynh

**Upgrade**

    yunohost app upgrade movim -u https://github.com/movim/movim_ynh

**Options**

* domain : Your domain name.
* path : Path to the Movim pod.
* admin : Allowed acces to /?admin (pod advanced options), must exist in Yunohost.
* password : Password to access /?admin.
* language : Pod language.
* enable sso : Automatic login.
* port : Local port for Movim daemon (no firewall configuration needed).

**Pod advanced configuration**

    https://example.com/movim/?admin

Username and password are defined during installation.

**Remove**

    yunohost app remove movim

**Help**

Just open an issue.
