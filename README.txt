This is a really simple script that I did to keep my bash skills up and yet provide an easy answer to people that need something. 

I figured it might be useful for some because they do not know the difference to UTC when en irc 
it returns the difference between your date and what happens next.

This can make it easier for new contributors to know when meetings on irc are and give them the number of hours they need to add or subtract.

I am not sure it is year 2038 compliant for some 32 bit cpus but this should  work around end of unix epoch. Thinking more about this problem however if this does become a problem in year 2038 however it will fix itself once the timestamp overflows for both UTC and your local timezone so this bug will only exists for 12 hours on a day 23 years in the future from when I am updating this README.

It should work locally on irc clients but does not really work in an irc bot as it would be the time zone the irc bot is in. 

Random fact is I wrote this in a hosp ital waiting room. 

Also TODO to get more testing on this script if you are on ubuntu or something similar is you can test and make sure it works on debian based systems with sudo dpkg-reconfigure tzdata to get to another time zone to test it out. But doing this on a productoin machine will make the time wrong. Changing the time zone this way is a lot easier than for example having a remote server in each time zone to test. 
