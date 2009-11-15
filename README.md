# TV Episode Name Fetcher

Currently still a work in progress.

This imaginatively named command line tool is for all the TV download junkies out there who end up with lots of horribly named video files typical of popular file sharing networks. TV Episode Name Fetcher will download the names of the episodes from the web, match the episode to the file and strip out all rubbish and leave you with useful file names along the lines of 

  [name of show].[season number][episode number].[episodename].[fileformat]
  
Examples:

    heroes.319.hdtv-icanhasproper.avi
    south.park.s13e03.dsr.xvid-0tv.avi
  
Becomes:

    Heroes.s03e19.Shades of Gray.avi
    South Park.s13e03.Dances with Smurfs.avi
  
## Isn't this a little anal?

Yes

## What's the point?

* I have OCD, maybe you do too.
* Writing a ruby tool is way more fun than copying and pasting episode names
* This is only piece of software I have ever written that my girlfriend thinks is a good idea
