# Apache - PHP configuration

[Pretty cool article](https://medium.com/@JohnFoderaro/how-to-set-up-apache-in-macos-sierra-10-12-bca5a5dfffba) on how to configure on MacOS Sierra Apache and PHP. Detail compiled details I needed without the explanation plus omitted some steps I didn't needed.

### Create a folder where you'll be hosting your projects

In this case I'll use `Sites` folder which is the default one on Mac. You can create one elsewhere and it would be the same.

`$ mkdir ~/Sites`

### Create a project folder

This will be a subdirectory where you'll be creating all the rest of the project you can work on.

`$ mkdir ~/Sites/ifrantar`

### Create html file

This will be for testing purposes once whe start configuring Apache.

`$ touch ~/Sites/ifrantar/index.html`

Then add to this file some dummy HTML.

```
<!doctype html>
<html>
  <head>
    <title>Hello, World! | Foo</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p>Welcome to <strong>Foo</strong>.</p>
  </body>
</html>
```

### Adding a user config file for Apache

This is the user config file we use to tell Apache where we'll be working and folder it'll need to serve.

`cd /etc/apache2/users`

Then create your user config file. Replase _username.conf_ for your own name or system name.

`sudo vim username.conf`

Then add this on the file. Press `i` to tell Vim you'll be editing text

```
<Directory "/Users/username/Sites/">
  AllowOverride All
  Options Indexes MultiViews FollowSymLinks
  Require all granted
</Directory>
```

To save the file, press `esc` then tell Vim to save it and quit editing `:wq`

Then you need to update the permissions on this file that Apache can read/write this file on your user and only that.

`sudo chmod 644 username.conf`

The “6” in “Owner” means the owner can read/write. The “4” and second “4” restricts “Group” and “Other” to read only.

### Turning on modules in httpd.conf

Go down the directory structure and land on `/etc/apache2`. Type `pwd` to make sure you are in the right directory.

Before you start editing the httpd.conf file, make sure to back it up.

`$ sudo cp httpd.conf httpd.conf.back`

Now got to edit `httpd.conf`. Uncomment this set of lines:

```
LoadModule authz_host_module libexec/apache2/mod_authz_host.so
LoadModule authz_core_module libexec/apache2/mod_authz_core.so
LoadModule userdir_module libexec/apache2/mod_userdir.so
LoadModule vhost_alias_module libexec/apache2/mod_vhost_alias.so
LoadModule php5_module libexec/apache2/libphp5.so
Include /private/etc/apache2/extra/httpd-userdir.conf
Include /private/etc/apache2/extra/httpd-vhosts.conf
```
Some of these might be already uncommented. If so: Yay!

Because the file is quite lengthy if you don't want to strain your eyes use some Vim commands to search for specific keywords:

`/` + `keyword` you are searching for will take you to that word.
Pressing `n` will search more instances of the same keyword going forward. `N` if you want to search more instances backwards.

### Edit httpd-userdir.conf

Switch directories.

`$ cd /etc/apache2/extra`

To be save do again a backup copy of this file

`$ sudo cp httpd-userdir.conf httpd-userdir.conf.bak`

Open the file

`$ sudo vim httpd-userdir.conf`

And then uncomment the following line

`Include /private/etc/apache2/users/*.conf`

### Restarting Apache

You always need to restart Apache everytime you are making a change to any of its configuration files. It's a way for it to acknowledge your updates.

`sudo apachectl restart`

### Viewing your files

If all went well up to this point you should be able to access the pages on the directory you have setup. Go to 

`http://localhost/~username`

## Optional steps

asdfasdf adfasdf

