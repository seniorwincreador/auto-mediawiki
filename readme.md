# Mediawiki.sh
A Bash script that installs newest mediawiki version for you. Works on Debian-based systems.

## General info

Script was created using commands from [the official tutorial](https://www.mediawiki.org/wiki/Manual:Running_MediaWiki_on_Debian_or_Ubuntu) to make hand installation easier.

## Requirements

- Debian-based OS that supports the newest mediawiki version.
- Fixed 'user is not in sudoers file' error.

## Usage

Start script, type your password and press Y sometimes while it's installing stuff.

## Important notices

- On database creating and configuring stage (starts when message 'Setup Database' appears) you have to enter commands and blank password by yourself (comands can be found in 'Additional Commands' section)
- If using raspberry pi os you have to add command 'sudo mysqld_safe --skip-grant-tables --skip-networking &' before line 11.
- You have to change PHP configuration file ( In line 'upload_max_filesize = 2M' set '2M' to '20M') by yourself when nano appears.

## Additional Commands

- 'CREATE USER 'new_mysql_user'@'localhost' IDENTIFIED BY 'THISpasswordSHOULDbeCHANGED';'
- 'CREATE DATABASE my_wiki;'
- 'use my_wiki;'
- 'GRANT ALL ON my_wiki.* TO 'new_mysql_user'@'localhost';'
- 'commit;'
- 'quit;'
