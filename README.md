# rTorrent 0.9.2 stable

Compiled on Ubuntu 11.04.

## Usage

Clone this repo:

```bash
$ git clone --depth 1 git://github.com/Ph3nx/rTorrent.git
```

Improve the config:

```bash
$ cd ./rTorrent
$ nano .rtorrent.rc
```

Create new app and add some config vars:

```bash
heroku create --buildpack https://github.com/Ph3nx/heroku-null-buildpack.git
heroku config:set LD_LIBRARY_PATH=./lib
```

Push to your server:

```bash
$ git add -A
$ git commit -m "improved config"
$ git push heroku master
```

Run it in the background:

```bash
$ screen -s t1 heroku run bash -a APP
$ ./t
$ cd dl
$ ~/ftp -inv IP
```

FTP the files:

```bash
ftp> user USER PW
ftp> passive
ftp> cd /
ftp> put FILE
ftp> get FILE
ftp> bye
```

SCP the files:

```bash
$ scp FILE USER@IP:/PATSH
```

## Issues

If STRG+S is not working add these lines to the .profile of your user

```bash
$ nano ~/.profile
stty ixany
stty ixoff -ixon
```
