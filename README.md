# listadmin3

listadmin3 is an unimaginatively named command line tool to manage Mailman3
lists and process queues, without the need to go to the Mailman3 interface. It
currently allows for the inspection of message moderation queues, allowing for
messages to be accepted or discarded manually. It is inspired by
[listadmin](https://sourceforge.net/projects/listadmin/), which is a much more
fully featured tool that operates on Mailman 2 lists.

### Configuration

Configuration is provided through a `~/.listadmin3.ini` file, such as follows:

```
base_url https://www.example.org/mailman3/

username fred@example.org
password thisisnotapassword

list partypeople@example.org
list admins@example.org
list announce@example.org
```

`base_url` should point to the Mailman3 instance to manage - the login page is
expected under `base_url/accounts/login/`

### TODO

There are lots of features missing that are available in the original listadmin,
but message moderation has been the primary focus in getting something useful.
Thoughts on things to add:

 * Ability to see message body
 * Command line configuration of config file location
 * Subscription management
 * Colourised output
 * Support for multiple hosts / login details in config file

### License

listadmin3 is released under the GPLv3.

### Requirements

listadmin3 is written in Python3 and requires
[MechanicalSoup](https://mechanicalsoup.readthedocs.io/en/stable/). It also
currently probably only works on *nix style machines, due to how it handles
accepting a single character response without the need for enter (in the `getch`
function).

### Downloads

listadmin3 is available via [GitHub](https://github.com/) at
[https://github.com/u1f35c/listadmin3](https://github.com/u1f35c/listadmin3)
