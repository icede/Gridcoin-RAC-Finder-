#! /usr/bin/perl 

use DBI;
use warnings; 

$user = "root"; 
$pass = "Seabiscut135"; 

$BH = DBI->connect("dbi:mysql:gabe", $user, $pass) or die DBI->errstr;


###### Get the names of all the projects that are in the blockchain (33) ######## 

$BTotes = $BH->prepare("SELECT DISTINCT ProjectName FROM gabedata;");  
$BTotes->execute or die $BTotes->errstr; 
    my @names =();
    while (my ($name) = $BTotes->fetchrow_array) {
        push @names, $name;
    }


$convector = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata 
			WHERE ProjectName = 'convector';");
$convector->execute or die $convector->errstr; 

my @convector = ();
while (my ($out) = $convector->fetchrow_array){
	push @output, $out;   

} 
foreach $o (@output){
	print "convector Net Average: $o\n";
}
####################################################################
print "\n";
my $rosettaS = 'rosetta@home';
$rosetta = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$rosettaS';");
$rosetta->execute or die $rosetta->errstr;

my @rosetta = ();
while (my ($out) = $rosetta->fetchrow_array){
        push @rosetta, $out;

}
foreach my $o (@rosetta){
        print "rosetta@home Net Average: $o\n";
}

print "\n";
####################################################################

#my $rosettaS = 'rosetta@home';
$collatz_conjecture = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'collatz conjecture';");
$collatz_conjecture->execute or die $collatz_conjecture->errstr;

my @collatz_conjecture = ();
while (my ($out) = $collatz_conjecture->fetchrow_array){
        push @collatz_conjecture, $out;

}
foreach my $o (@collatz_conjecture){
        print "Collatz Conjecture Net Average: $o\n";
}
print "\n";

#####################################################################


#my $rosettaS = 'rosetta@home';
$world_community_grid = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'world community grid';");
$world_community_grid->execute or die $world_community_grid->errstr;

my @world_community_grid = ();
while (my ($out) = $world_community_grid->fetchrow_array){
        push @world_community_grid, $out;

}
foreach my $o (@world_community_grid){
        print "World Community Grid Net Average: $o\n";
}
print "\n";

####################################################################


my $milkyway = 'milkyway@home';
$milkyway = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$milkyway';");
$milkyway->execute or die $milkyway->errstr;

my @milkyway = ();
while (my ($out) = $milkyway->fetchrow_array){
        push @milkyway, $out;

}
foreach my $o (@milkyway){
        print "milkyway@home Net Average: $o\n";
}
print "\n";

####################################################################


my $seti = 'seti@home';
$seti = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$seti';");
$seti->execute or die $seti->errstr;

my @seti = ();
while (my ($out) = $seti->fetchrow_array){
        push @seti, $out;

}
foreach my $o (@seti){
        print "seti@home Net Average: $o\n";
}
print "\n";

####################################################################

#my $seti = 'seti@home';
$malariacontrol = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'malariacontrol.net';");
$malariacontrol->execute or die $malariacontrol->errstr;

my @malariacontrol = ();
while (my ($out) = $malariacontrol->fetchrow_array){
        push @malariacontrol, $out;

}
foreach my $o (@malariacontrol){
        print "malariacontrol Net Average: $o\n";
}
print "\n";

###################################################################


my $asteroids = 'asteroids@home';
$asteroids = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$asteroids';");
$asteroids->execute or die $asteroids->errstr;

my @asteroids = ();
while (my ($out) = $asteroids->fetchrow_array){
        push @asteroids, $out;

}
foreach my $o (@asteroids){
        print "asteroids@home Net Average: $o\n";
}
print "\n";

##################################################################

my $sat = 'sat@home';
$sat = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$sat';");
$sat->execute or die $sat->errstr;

my @sat = ();
while (my ($out) = $sat->fetchrow_array){
        push @sat, $out;

}
foreach my $o (@sat){
        print "sat@home Net Average: $o\n";
}
print "\n";

#################################################################


my $cosmology = 'cosmology@home';
$cosmology = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$cosmology';");
$cosmology->execute or die $cosmology->errstr;

my @cosmology = ();
while (my ($out) = $cosmology->fetchrow_array){
        push @cosmology, $out;

}
foreach my $o (@cosmology){
        print "cosmology@home Net Average: $o\n";
}
print "\n";

##########################################################


#my $primegrid = 'cosmology@home';
$primegrid = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'primegrid';");
$primegrid->execute or die $primegrid->errstr;

my @primegrid = ();
while (my ($out) = $primegrid->fetchrow_array){
        push @primegrid, $out;

}
foreach my $o (@primegrid){
        print "primegrid Net Average: $o\n";
}
print "\n";

##########################################################



my $climateprediction = 'climateprediction.net';
$climateprediction = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$climateprediction';");
$climateprediction->execute or die $climateprediction->errstr;

my @climateprediction = ();
while (my ($out) = $climateprediction->fetchrow_array){
        push @climateprediction, $out;

}
foreach my $o (@climateprediction){
        print "climateprediction Net Average: $o\n";
}
print "\n";

#########################################################################



#my $climateprediction = 'cosmology@home';
$burp = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'burp';");
$burp->execute or die $burp->errstr;

my @burp = ();
while (my ($out) = $burp->fetchrow_array){
        push @burp, $out;

}
foreach my $o (@burp){
        print "burp Net Average: $o\n";
}
print "\n";

########################################################################


#my $climateprediction = 'cosmology@home';
$gpugrid = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'gpugrid';");
$gpugrid->execute or die $gpugrid->errstr;

my @gpugrid = ();
while (my ($out) = $gpugrid->fetchrow_array){
        push @gpugrid, $out;

}
foreach my $o (@gpugrid){
        print "Gpugrid Net Average: $o\n";
}
print "\n";

#########################################################################

#my $climateprediction = 'cosmology@home';
$constellation = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'constellation';");
$constellation->execute or die $constellation->errstr;

my @constellation = ();
while (my ($out) = $constellation->fetchrow_array){
        push @constellation, $out;

}
foreach my $o (@constellation){
        print "constellation Net Average: $o\n";
}
print "\n";


#########################################################################

my $theskynet_pogs = 'theskynet pogs';
$theskynet_pogs = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'theskynet pogs';");
$theskynet_pogs->execute or die $theskynet_pogs->errstr;

my @theskynet_pogs = ();
while (my ($out) = $theskynet_pogs->fetchrow_array){
        push @theskynet_pogs, $out;

}
foreach my $o (@theskynet_pogs){
        print "theskynet pogs Net Average: $o\n";
}
print "\n";

#######################################################################

my $beal = 'beal@home';
$beal = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$beal';");
$beal->execute or die $beal->errstr;

my @beal = ();
while (my ($out) = $beal->fetchrow_array){
        push @beal, $out;

}
foreach my $o (@beal){
        print "beal@home pogs Net Average: $o\n";
}
print "\n";

##########################################################################

my $leiden = 'leiden classical';
$leiden = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$leiden';");
$leiden->execute or die $leiden->errstr;

my @leiden = ();
while (my ($out) = $leiden->fetchrow_array){
        push @leiden, $out;

}
foreach my $o (@leiden){
        print "leiden_classical Net Average: $o\n";
}
print "\n";


########################################################################

my $numberfields = 'numberfields@home';
$numberfields = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$numberfields';");
$numberfields->execute or die $numberfields->errstr;

my @numberfields = ();
while (my ($out) = $numberfields->fetchrow_array){
        push @numberfields, $out;

}
foreach my $o (@numberfields){
        print "numberfields@home Net Average: $o\n";
}
print "\n";

############################################################################

my $albert = 'albert@home';
$albert = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$albert';");
$albert->execute or die $albert->errstr;

my @albert = ();
while (my ($out) = $albert->fetchrow_array){
        push @albert, $out;

}
foreach my $o (@albert){
        print "albert@home Net Average: $o\n";
}
print "\n";

############################################################################

my $edges = 'edges@home';
$edges = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$edges';");
$edges->execute or die $edges->errstr;

my @edges = ();
while (my ($out) = $edges->fetchrow_array){
        push @edges, $out;

}
foreach my $o (@edges){
        print "edges@home Net Average: $o\n";
}
print "\n";

############################################################################

my $einstein = 'einstein@home';
$einstein = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$einstein';");
$einstein->execute or die $einstein->errstr;

my @einstein = ();
while (my ($out) = $einstein->fetchrow_array){
        push @einstein, $out;

}
foreach my $o (@einstein){
        print "einstein@home Net Average: $o\n";
}
print "\n";

#######################################################################
my $poem = 'poem@home';

$poem = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$poem';");
$poem->execute or die $poem->errstr;

my @poem = ();
while (my ($out) = $poem->fetchrow_array){
        push @poem, $out;

}
foreach my $o (@poem){
        print "poem@home Net Average: $o\n";
}
print "\n";

######################################################################


my $lhc = 'lhc@home 1.0';

$lhc = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$lhc';");
$lhc->execute or die $lhc->errstr;

my @lhc = ();
while (my ($out) = $lhc->fetchrow_array){
        push @lhc, $out;

}
foreach my $o (@lhc){
        print "lhc@home 1.0  Net Average: $o\n";
}
print "\n";

#####################################################################

my $yoyo = 'yoyo@home';

$yoyo = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$yoyo';");
$yoyo->execute or die $yoyo->errstr;

my @yoyo = ();
while (my ($out) = $yoyo->fetchrow_array){
        push @yoyo, $out;

}
foreach my $o (@yoyo){
        print "yoyo@home Net Average: $o\n";
}
print "\n";

#####################################################################


my $moo = 'moo! wrapper';

$moo = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$moo';");
$moo->execute or die $moo->errstr;

my @moo = ();
while (my ($out) = $moo->fetchrow_array){
        push @moo, $out;

}
foreach my $o (@moo){
        print "moo@home Net Average: $o\n";
}
print "\n";

###################################################################

my $mindmodeling = 'mindmodeling@beta';

$mindmodeling = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$mindmodeling';");
$mindmodeling->execute or die $mindmodeling->errstr;

my @mindmodeling = ();
while (my ($out) = $mindmodeling->fetchrow_array){
        push @mindmodeling, $out;

}
foreach my $o (@mindmodeling){
        print "mindmodeling@beta Net Average: $o\n";
}
print "\n";

###################################################################


my $cas = 'cas@home';

$cas = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$cas';");
$cas->execute or die $cas->errstr;

my @cas = ();
while (my ($out) = $cas->fetchrow_array){
        push @cas, $out;

}
foreach my $o (@cas){
        print "casg@home Net Average: $o\n";
}
print "\n";

#####################################################################

my $enigma = 'enigma@home';

$enigma = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$enigma';");
$enigma->execute or die $enigma->errstr;

my @enigma = ();
while (my ($out) = $enigma->fetchrow_array){
        push @enigma, $out;

}
foreach my $o (@enigma){
        print "enigma@home Net Average: $o\n";
}
print "\n";


##################################################################

my $nfs = 'nfs@home';

$nfs = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$nfs';");
$nfs->execute or die $nfs->errstr;

my @nfs = ();
while (my ($out) = $nfs->fetchrow_array){
        push @nfs, $out;

}
foreach my $o (@nfs){
        print "nfs@home Net Average: $o\n";
}
print "\n";

################################################################


#my $sztaki = 'sztaki desktop grid';

$sztaki = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = 'sztaki desktop grid';");
$sztaki->execute or die $sztaki->errstr;

my @sztaki = ();
while (my ($out) = $sztaki->fetchrow_array){
        push @sztaki, $out;

}
foreach my $o (@sztaki){
        print " sztaki desktop grid Net Average: $o\n";
}
print "\n";

##############################################################

my $wuprop = 'wuprop@home';

$wuprop = $BH->prepare("SELECT SUM(RAC)/COUNT(RAC) FROM gabedata
                        WHERE ProjectName = '$wuprop';");
$wuprop->execute or die $wuprop->errstr;

my @wuprop = ();
while (my ($out) = $wuprop->fetchrow_array){
        push @wuprop, $out;

}
foreach my $o (@wuprop){
        print " wuprop@home Net Average: $o\n";
}
print "\n";


