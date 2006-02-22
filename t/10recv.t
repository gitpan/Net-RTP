
use strict;
use Test;


# use a BEGIN block so we print our plan before Net::RTP is loaded
BEGIN { plan tests => 8 }

# load Net::RTP
use Net::RTP;

# Module has loaded sucessfully 
ok(1);


# Create a send object
my $rtp = new Net::RTP('RECVONLY');
ok( defined $rtp );

# Set the local port
$rtp->set_local_addr( "0.0.0.0", 1286 );
ok( $rtp->get_local_port() == 1286 );


# Set Jitter compensation
$rtp->set_jitter_compensation( 40 );
ok( $rtp->get_jitter_compensation() == 40);

# Set adaptive Jitter compensation
$rtp->set_adaptive_jitter_compensation( 1 );
ok( $rtp->get_adaptive_jitter_compensation() == 1);

# Set the payload we are looking for
$rtp->set_recv_payload_type( 8 );
ok( $rtp->get_recv_payload_type() == 8);


# Flush the network sockets
$rtp->flush_sockets();
ok(1);




## FIXME: send and recieve a packet here


# Delete the Net::RTP object
undef $rtp;
ok( 1 );



exit;

