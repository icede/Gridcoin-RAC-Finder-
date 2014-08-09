#! /usr/bin/perl

use DBI;
use warnings;

@bhash;
$counter1 = 0;
$counter2 = 0;
$walletpath = 'path/to/gridcoin/wallet'; 
$PS = `$walletpath getblockcount`;
$lastblock = ($PS - 8065);
$user = "mysql"; # mysql user 
$pass = "password"; # mysql password

################# Generating the blockdata.dat file #################

open $FH, ">", "./blockdata.dat" or die "$! Could not open file ";


        for (my $i = $PS ;$i >= $lastblock; $i--){
        $bhash[$counter1] = `$walletpath getblockhash $i`;
        $counter1++;
        }

        for(my $k = 0; $k <= 8065;$k++){
        print $FH `/home/kieran/startg getblock $bhash[$k]`;
        $counter2++;
        }
close $FH;

###### Pasring the blockdata.dat file / Taking the stuff we need and dumping into MySql ### 

open BDATA, "<", "./blockdata.dat" or die "$! could not open file ";

$BH = DBI->connect("dbi:mysql:gabe", $user, $pass) or die DBI->errstr;
$BH->do("DELETE FROM gabedata;") or die DBI->errstr;

while($row = <BDATA>){
        if ($row =~ m/ProjectName/g){
        $DumpProjName = substr $row, 21;
        chop $DumpProjName; chop $DumpProjName; chop $DumpProjName;
        }
        if($row =~ m/RAC/g){
        $DumpRac = substr $row, 12;
        chop $DumpRac; chop $DumpRac;
        }
        if ($row =~ m/CPID"/g){
        $DumpCpid = substr $row, 14;
        chop $DumpCpid; chop $DumpCpid; chop $DumpCpid;
        }
        if ($row =~ m/height/g){
        $DumpHeight = substr $row, 15;
        chop $DumpHeight; chop $DumpHeight;
        }
        if($row =~ m/nextblockhash/g){
        $BH->do("INSERT INTO gabedata (ProjectName, RAC, CPID, Height) VALUE$
        }
}
close BDATA;
