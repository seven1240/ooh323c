#!/usr/local/bin/perl
#
# * Copyright (C) 2004-2005 by Objective Systems, Inc.
# *
# * This software is furnished under an open source license and may be
# * used and copied only in accordance with the terms of this license.
# * The text of the license may generally be found in the root
# * directory of this installation in the COPYING file.  It
# * can also be viewed online at the following URL:
# *
# *   http://www.obj-sys.com/open/license.html
# *
# * Any redistributions of this file including modified versions must
# * maintain this copyright notice.
# *
# ***************************************************************************/
if(@ARGV < 2) {
   print "Usage - perl mkfwkit.pl [compact|standard] [version]";
   exit(0);
}
print "Preparing ", $ARGV[0], " kit";
if ($ARGV[0] eq "compact") {
   print " Compact\n";
   $suff = "-compact";
}
print "\n";

$version = $ARGV[1];


print `rm -f ooh323c-${version}.tar.gz`;
print `rm -rf ooh323c-${version}`;
mkdir ("ooh323c-${version}", 0777);
print `cp -f ./AUTHORS ./ooh323c-${version}/AUTHORS`;
print `cp -f ./COPYING ./ooh323c-${version}/COPYING`;
print `cp -f ./ChangeLog ./ooh323c-${version}/ChangeLog`;
print `cp -f ./INSTALL ./ooh323c-${version}/INSTALL`;
print `cp -f ./Makefile.am ./ooh323c-${version}/Makefile.am`;
print `cp -f ./Makefile.in ./ooh323c-${version}/Makefile.in`;
print `cp -f ./NEWS ./ooh323c-${version}/NEWS`;
print `cp -f ./README ./ooh323c-${version}/README`;

print `cp -f ./configure ./ooh323c-${version}/configure`;
print `cp -f ./configure.in ./ooh323c-${version}/configure.in`;
print `cp -f ./config.h.in ./ooh323c-${version}/config.h.in`;
print `cp -f ./ooh323c.dsw ./ooh323c-${version}/ooh323c.dsw`;

mkdir ("ooh323c-${version}/config", 0777);
print `cp -f -r ./config/* ./ooh323c-${version}/config`;
print `rm -rf ./ooh323c-${version}/config/CVS`;


mkdir ("ooh323c-${version}/doc", 0777);
mkdir ("ooh323c-${version}/doc/H323StackLibrary", 0777);
mkdir ("ooh323c-${version}/doc/MediaLibrary", 0777);
print `cp -f -r ./doc/H323Introduction.PDF ./ooh323c-${version}/doc/.`;
print `cp -f -r ./doc/MediaLibRef0.2.PDF ./ooh323c-${version}/doc/.`;
print `cp -f -r ./doc/H323StkUsersGuidev${version}.PDF ./ooh323c-${version}/doc/.`;
print `cp -f -r ./doc/H323StkAPIRefMan.PDF ./ooh323c-${version}/doc/.`;
print `cp -f -r ./doc/H323StackLibrary/* ./ooh323c-${version}/doc/H323StackLibrary`;
print `cp -f -r ./doc/MediaLibrary/* ./ooh323c-${version}/doc/MediaLibrary`;
   
mkdir ("ooh323c-${version}/specs", 0777);
print `cp -f ./specs/*.asn ./ooh323c-${version}/specs`;

  
mkdir ("ooh323c-${version}/src", 0777);
mkdir ("ooh323c-${version}/src/h323", 0777);
#mkdir ("ooh323c-${version}/src/h450", 0777);

print `cp -f ./src/Makefile.am ./ooh323c-${version}/src/Makefile.am`;
print `cp -f ./src/Makefile.in ./ooh323c-${version}/src/Makefile.in`;
print `cp -f ./src/oostk.dsp ./ooh323c-${version}/src/oostk.dsp`;
print `cp -f ./src/*.h ./ooh323c-${version}/src`;
print `cp -f ./src/*.c ./ooh323c-${version}/src`;
print `cp -f ./src/h323${suff}/*.h ./ooh323c-${version}/src/h323`;
print `cp -f ./src/h323${suff}/*.c ./ooh323c-${version}/src/h323`;

#print `cp -f ./src/h450${suff}/* ./ooh323c-${version}/src/h450` ;






mkdir ("ooh323c-${version}/tests", 0777);
print `cp -f ./tests/Makefile.am ./ooh323c-${version}/tests/Makefile.am`;
print `cp -f ./tests/Makefile.in ./ooh323c-${version}/tests/Makefile.in`;

mkdir ("ooh323c-${version}/tests/simple", 0777);
print `cp -f ./tests/simple/*.c ./ooh323c-${version}/tests/simple`;
print `cp -f ./tests/simple/*.h ./ooh323c-${version}/tests/simple`;
print `cp -f ./tests/simple/Makefile.am ./ooh323c-${version}/tests/simple/Makefile.am`;
print `cp -f ./tests/simple/Makefile.in ./ooh323c-${version}/tests/simple/Makefile.in`;
print `cp -f ./tests/simple/simple.dsp ./ooh323c-${version}/tests/simple/simple.dsp`;
  

mkdir ("ooh323c-${version}/tests/player", 0777);
print `cp -f ./tests/player/*.c ./ooh323c-${version}/tests/player`;
print `cp -f ./tests/player/*.h ./ooh323c-${version}/tests/player`;
print `cp -f ./tests/player/Makefile.am ./ooh323c-${version}/tests/player/Makefile.am`;
print `cp -f ./tests/player/Makefile.in ./ooh323c-${version}/tests/player/Makefile.in`;
print `cp -f ./tests/player/space.raw ./ooh323c-${version}/tests/player/space.raw`;
print `cp -f ./tests/player/ooPlayer.dsp ./ooh323c-${version}/tests/player/ooPlayer.dsp`;
print `cp -f ./tests/player/space.wav ./ooh323c-${version}/tests/player`;
print `cp -f ./tests/player/states.wav ./ooh323c-${version}/tests/player`;

mkdir ("ooh323c-${version}/tests/receiver", 0777);
print `cp -f ./tests/receiver/*.c ./ooh323c-${version}/tests/receiver`;
print `cp -f ./tests/receiver/*.h ./ooh323c-${version}/tests/receiver`;
print `cp -f ./tests/receiver/Makefile.am ./ooh323c-${version}/tests/receiver/Makefile.am`;
print `cp -f ./tests/receiver/Makefile.in ./ooh323c-${version}/tests/receiver/Makefile.in`;
print `cp -f ./tests/receiver/ooReceiver.dsp ./ooh323c-${version}/tests/receiver/ooReceiver.dsp`;
  

mkdir ("ooh323c-${version}/media", 0777);
print `cp -r -f ./media/*.c ./ooh323c-${version}/media`;
print `cp -r -f ./media/*.h ./ooh323c-${version}/media`;
print `cp -r -f ./media/Makefile.am ./ooh323c-${version}/media/Makefile.am`;
print `cp -r -f ./media/Makefile.in ./ooh323c-${version}/media/Makefile.in`;
print `cp -r -f ./media/oomedia.dsp ./ooh323c-${version}/media/oomedia.dsp`;


`perl dos2unix.pl  ooh323c-${version} ooh323c-${version}-temp`;
`rm -rf ooh323c-${version}`;
`mv ooh323c-${version}-temp ooh323c-${version}`;
`tar -cvf ooh323c-${version}.tar ooh323c-${version}`;
`gzip ooh323c-${version}.tar`;
#`rm -rf ooh323c`;

