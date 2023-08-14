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

### Usage

Typical usage is just running `listadmin3` and responding to the prompts. It
will try each configured list in turn, dealing with subscription requests and
then messages held for moderation. Responses relating to subscription requests
are carried out immediately, responses for pending messages are not processed
until all messages are shown and the pending actions confirmed.

Lists with more than 200 messages pending moderation will only show the first
200; operations on those will work fine (and if you deal with the 200 and re-run
you'll be able to moderate the later ones).

```
$ listadmin3
fetching data for partypeople@example.org ... 200 messages
(1/200) 5303: omgitsspam@example.org / March 31, 2023, 6:39 a.m.:
  The message is not from a list member: TOP PICK
(a)ccept, (d)iscard, (b)ody, (h)eaders, (s)kip, (q)uit? q
Moving on...
fetching data for admins@example.org ... 1 subscription requests
(1/1) "The New Admin" <newadmin@example.org>
(a)ccept, (d)iscard, (r)eject, (s)kip, (q)uit? a
1 messages
(1/1) 6560: anastyspamer@example.org / Aug. 13, 2023, 3:15 p.m.:
  The message is not from a list member: Buy my stuff!
(a)ccept, (d)iscard, (b)ody, (h)eaders, (s)kip, (q)uit? d
0 to accept, 1 to discard, proceed? (y/n) y
fetching data for announce@example.org ... nothing in queue
$
```

### TODO

There are lots of features missing that are available in the original listadmin,
but message moderation has been the primary focus in getting something useful.
Thoughts on things to add:

 * Colourised output
 * Support for rejecting messages (with reason)
 * Generally better UX
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
