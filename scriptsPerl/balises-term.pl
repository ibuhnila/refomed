# Balisage de termes médicaux

use lib ("C:/Users/Ioana/Desktop/Doctorat/These_D1D2/SIFR/JSON-4.02");
use LWP::Simple;                # CPAN
use JSON qw( decode_json );     # CPAN
use Data::Dumper;        		# Perl core module           
use strict;                     # Module Perl
use warnings;                   # Bonne pratique
use open ":std", ":encoding(UTF-8)";
use utf8;						# Pour les accents en français

my $txt = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/balisage-termesEX/marqueurs-termCLEAR-EX.txt";
my $trm = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/balisage-termesEX/termesMedCc-Ex.txt";
my $bls = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/balisage-termesEX/ClearEX-balises-bon.txt";

open(my $texte, "<:encoding(utf8)", $txt)
  or die "Could not open file '$txt' $!";

open(my $balises, ">:encoding(utf8)", $bls)
  or die "Could not open file '$bls' $!";
  
#Faire un tableau avec les phrases

my @tabtxt = "";

open ($texte, "<:encoding(utf8)", $txt) or die "Could not open file $txt: $!\n"; {
    while (my $l = <$texte>){
	push (@tabtxt, $l);
	}
}

#Chercher les termes médicaux du fichier $termes dans le texte
#While on itère sur le fichier $termes, pour chaque ligne (phrase) du fichier txt, si ln(ligne du txt) matches ligne($termes), remplace et imprime le résultat dans le fichier $balises


foreach my $ln(@tabtxt){
my $nouv_ln = "";
	
	open(my $termes, "<:encoding(utf8)", $trm)
    or die "Could not open file '$trm' $!";

	while (my $ligne = <$termes>){
	chomp $ligne;
	my $ligne2 = "<t>".$ligne."</t>";
		if ($ln =~ m/\b($ligne)\b/i){
		 $ln =~ s/$ligne/$ligne2/g;
		 $nouv_ln = $ln ;
			if ($ln !~ m/\b($ligne)\b/i){
			next;
			}	
		}
	}
	print $balises $nouv_ln;
	close $termes;
}
