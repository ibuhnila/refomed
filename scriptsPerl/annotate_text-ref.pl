# Extraction automatique de termes médicaux en français avec SIFR-BioPortal (adapté de github, Paul R Alexander)

use lib ("C:/Users/Ioana/Desktop/Doctorat/These_D1D2/SIFR/JSON-4.02");
use LWP::Simple;                # CPAN
use JSON qw( decode_json );     # CPAN
use Data::Dumper;        		# Module Perl       
use strict;                     # Bonne pratique
use warnings;                   # Bonne pratique
use open ":std", ":encoding(UTF-8)";

my $rest_url = "http://data.bioportal.lirmm.fr/";
my $api_key = "b2ccd728-6623-4385-b91c-2c3951204779";
my $res_annot = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/annot-termesEX/ref_termesEX2.txt";
my @files=<*.txt>;

open(my $fd, ">:encoding(UTF-8)", $res_annot)
  or die "Could not open file '$res_annot' $!";
  
foreach my $text (@files) {
my $allignes = "";
    open (my $FILE, "<:encoding(UTF-8)", $text) or die "Could not open file $text: $!\n"; {

    while (my $ligne = <$FILE>) {
        chomp $ligne;
$allignes=$allignes.$ligne."\n";
	}
}

# Obtenir les ressources de premier niveau
my $json = get( $rest_url . "?apikey=" . $api_key );
my $resources = decode_json( $json );

# Suivre les liens vers les ontologies médicales
my $annotate_link = $resources->{'links'}->{'annotator'};

# Accéder les ontologies
my $annotate_json = get( $annotate_link . "?text=" . $allignes . "&include=prefLabel&apikey=" . $api_key );
die "Could not get $annotate_link!" unless defined $annotate_json;

my @classes = @{ decode_json( $annotate_json ) };

#Sortir les termes médicaux qui se retrouvent dans nos corpus à partir de termes de l'ontologie

foreach my $ann (@classes) {

  my $cls = $ann->{'annotatedClass'};
  
  my $cls2 = $ann->{'annotations'}[0];
	
  print $fd $cls->{'prefLabel'} . "\t" . $cls2->{'matchType'}. "\t" . $cls2->{'text'} . "\t" .  $cls->{'@id'} . "\t" . $cls->{'links'}->{'ontology'} . "\n";
	}
}
#Script proposé par Paul R Alexander sur la plateforme de partage de code Github et adapté par nous (https://github.com/ncbo/ncbo_rest_sample_code/blob/master/perl/annotate_text.pl)
