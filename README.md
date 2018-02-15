# auth-ntp-server

Dockerized authenticated symmetric key NTP server

This is a simple dockerized authenticated symmetric key NTP server using a
hard-coded key `123456`.

To start:

```shell
$ make image run
```

To stop:

```shell
$ make stop
```

To enter the container:

```shell
$ make exec
```

Confirm it is running and offering time (this takes some time, check for a `*` in front of host):

```shell
$ ntpq -p localhost
```

To test the NTP server:

```shell
$ ntpdate -k ntp.keys -a 1 -q localhost
```
