# Extraction de marqueurs de reformulation (liste initiale) (phrases avec des termes)

use lib ("C:/Users/Ioana/Desktop/Doctorat/These_D1D2/SIFR/JSON-4.02");
use LWP::Simple;                # CPAN
use JSON qw( decode_json );     # CPAN
use Data::Dumper;        		# Module Perl        
use strict;                     # Bonne pratique
use warnings;                   # Bonne pratique
use open ":std", ":encoding(UTF-8)";
use utf8;						# Pour les accents en français

# La variable $contx contient les phrases dont nous avons identifié des termes médicaux

my $contx = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/extract-termEX/extract-marqEX/termCLEAR-EX.txt";
my $nonmarq = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/extract-termEX/extract-marqEX/non-marq-termCLEAR-EX.txt";
my $marq = "C:/Users/Ioana/Desktop/Doctorat_D3/These_D1D2D3/CorpusThese/FR-CLEAR/cochrane/PARALLELE/Termes-marq2/extract-termEX/extract-marqEX/marqueurs-termCLEAR-EX.txt";

open(my $texte, "<:encoding(utf8)", $contx)
  or die "Could not open file '$contx' $!";
open(my $non, ">:encoding(utf8)", $nonmarq)
  or die "Could not open file '$nonmarq' $!";
open(my $oui, ">:encoding(utf8)", $marq)
  or die "Could not open file '$marq' $!";
  
#Faire un tableau avec les phrases

my @tabcontx ="";

open ($texte, "<:encoding(utf8)", $contx) or die "Could not open file $contx: $!\n"; {
    while (my $ligne = <$texte>) {
        chomp $ligne;
	push (@tabcontx, $ligne);
	}
}
# Trouver les marqueurs dans le contexte, si oui, print la ligne dans $oui, si non, print la ligne dans $non

foreach my $cligne(@tabcontx){
  if ($cligne =~ m/\b(c'est-à-dire|c'est à dire|c'est a dire|c'està-dire|c'est-a-dire|ça veut dire|pour dire autrement|autrement dit|signifie|ce qu’on appelle|ce que l'on appelle|est aussi appelé|aussi appelé|doit être compris comme|au sens de|défini|définie|defini|definie|défini comme|définition|definition|est une affection|est une maladie|est un trouble|affection|affections|maladie|maladies|trouble|troubles|désigne|par exemple|veut dire|tel que)\b/){
	print $oui $cligne. "\n"; 
  }
  else {
	print $non $cligne. "\n";
  }
}