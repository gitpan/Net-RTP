
use strict;
use Test;


# use a BEGIN block so we print our plan before Net::RTP is loaded
BEGIN { plan tests => 3 }

# load Net::RTP
use Net::RTP;

# Helpful notes.  All note-lines must start with a "#".
print "# I'm testing Net::RTP version $Net::RTP::VERSION\n";

# Module has loaded sucessfully 
ok(1);


# Create a send/receive object
my $rtp = new Net::RTP('SENDRECV');
ok( defined $rtp );


# Delete the Net::RTP object
undef $rtp;
ok( 1 );

exit;

