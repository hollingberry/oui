# oui

Lookup MAC address prefixes.

## Synopsis

```sh
$ oui 80:e6:50:d:13:74
80-E6-50    Apple, Inc.
```

## Description

The oui utility provides an easy way to lookup OUIs and other MAC address
prefixes using the official IEEE OUI database.

The address must be at least three octets and either colon‐delimited,
dash−delimited, or period−delimited. It attempts to expand one−byte sequences
into two−byte sequences so that, for instance, `b5:d:d1` becomes `b5:0d:d1`.

When you first run oui, it will try to download the IEEE OUI database, which
requires Internet connectivity and can take quite a while. However, once the
database is downloaded, oui will run quickly and without Internet connectivity.

## Installation

Download the [tarball](https://github.com/hollingberry/oui/archive/master.tar.gz),
then run `make && sudo make install`. This installs the script to
`/usr/local/bin` and the man page to `/usr/local/share/man/man1`.

To uninstall, run `make clean`.
