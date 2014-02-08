# rTorrent 0.9.2 stable

Compiled on Ubuntu 11.04.

## Usage

Clone this repo:

```bash
$ git clone --depth 1 git://github.com/ph3nx/rTorrent.git
```

Improve the config:

```bash
$ cd rTorrent
$ vi .rtorrent.rc
```

Create new app and add some config vars:

```bash
heroku create --buildpack https://github.com/ph3nx/heroku-binary-buildpack.git
heroku config:set LD_LIBRARY_PATH=./lib
heroku config:set PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/app/bin
```

Push to your server:

```bash
$ git add -A
$ git commit -m "improved config"
$ git push -u heroku master
```

Run it in the background:

```bash
$ screen -s t1 heroku run bash -a APP
$ t
$ cd dl
$ ~/ftp -inv IP
```

## Upload files to different server

FTP

```bash
ftp user@server-ip
ftp> user USER PW
ftp> passive
ftp> cd /
ftp> put FILE
ftp> get FILE
ftp> bye
```

SCP

```bash
$ scp FILE USER@IP:/PATSH
```

CURL FTP upload

```bash
curl -T file ftp://server-ip --user username:password
```


## Issues

If STRG+S is not working add these lines to the .profile of your user

```bash
$ nano ~/.profile
stty ixany
stty ixoff -ixon
```
