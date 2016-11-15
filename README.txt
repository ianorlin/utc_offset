This is a really simple script that I did to keep my bash skills up and yet provide an easy answer to people that need something. I have developed this for linux but have only looked at mac man pages and it may work there as bc and strftime have the same output at least in Mac OS 10.9.  

I figured it might be useful for some because they do not know the difference to UTC when en irc 
it returns the difference between your time and UTC and shows the time zone of your current locale as a sanity check. When in irc I see people constantly ask the difference between UTC and there local time so figured might write a script so they can automate this themselves as it would be good practice for me easy enough to implement and yet helpful to others. 


I am not sure it is year 2038 compliant for some 32 bit cpus but this should  work around end of unix epoch. Thinking more about this problem however if this does become a problem in year 2038 however it will fix itself once the timestamp overflows for both UTC and your local timezone so this bug will only exists for 12 hours on a day 23 years in the future from when I am updating this README.

This script included would work better in an irc client but not really work if you put it in an irc bot as that would show the time from the bots locale.

Random fact is I wrote this in a hospital waiting room but have come back and continued to iterate on it. 

Also I have figured a way to test this script on debian based systems for time zones other than my own by running a virtual machine and then changing the time zone in that and a way to do this on all debian based systems is sudo dpkg-reconfigure tzdata looking back a year later I think that a container could also be quite useful for this to help coordinate for meetings.  
