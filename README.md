# RefoMed

_French version below_

**RefoMed** is a corpus of **medical sub-sentential paraphrases** in French and Romanian. The RefoMed corpus is made up of 10,464 pairs of medical terms and their correspondant medical paraphrase and is divided into two parts: 

- the **RefoMed-FR** corpus, which contains 7,437 pairs of medical terms - medical paraphrases in French 🇫🇷
- the **RefoMed-RO** corpus, containing 3,027 pairs of medical terms - medical paraphrases in Romanian 🇷🇴

RefoMed was created during the PhD thesis [An automatic method for building paraphrase corpora](https://theses.hal.science/tel-04226255/) by Ioana Buhnila (LiLPa, UR 1339, Linguistics, Languages, Speech, University of Strasbourg, France, in collaboration with the Research Institute on Artificial Intelligence (RACAI) of the Romanian Academy of Bucharest).

## Method

The semi-automatic method developed for building the RefoMed corpus consists of several processing and annotation stages:
1. Sentences containing medical terms were automatically extracted from medical terminologies for French and from lists of medical terms for Romanian;
2. We compiled lists of paraphrase markers based on the state of the art and our own observations of our medical text corpora. These markers were searched for in sentences containing medical terms, in order to test their usefulness in marking medical paraphrases;
3. Sentences containing medical terms and markers were manually annotated and validated by several non-medical human annotators;
4. Correct and validated term-marker-paraphrase pairs make up the RefoMed corpus (in depth presentation of the method in the PhD thesis of [Buhnila, 2023](https://theses.hal.science/tel-04226255/)).

## Source Corpora

- ClassYN (Todirascu et al., 2012) - comparable corpus that includes scientific and popularization texts from the field of medicine in French;
- CLEAR Cochrane (Grabar and Cardon, 2018) - comparable corpus of scientific and simplified abstracts from the medical field;
- GrandMedRo2 (Buhnila, 2023) - corpus containing medical popularization texts extracted from the web with the web scraping tool Sketch Engine (Kilgarriff et al., 2014).

## Paraphrase Generation Task

We have carried out automatic paraphrase generation experiments by adapting the APT architecture to our data (Buhnila & Todirascu, 2023) (https://github.com/Advancing-Machine-Human-Reasoning-Lab/apt). 

We share the scripts adapted to the French and Romanian languages with the community.

## License

Creative Commons NonCommercial 4.0 International (CC BY-NC 4.0)
https://creativecommons.org/licenses/by-nc/4.0/ 

## Data Accessibility

The French dataset (**RefoMed-FR**) is available for research under CC BY-NC 4.0 license.

To access the Romanian dataset (**RefoMed-RO**), please send a request to _ioana.buhnila@univ-lorraine.fr_

## References

Buhnila Ioana & Todirascu Amalia. (2023). Évaluation d’un générateur automatique de reformulations médicales. TALN, 5-9 juin, 2023, Paris, France.

Buhnila Ioana. (2023). Annotation lexicale et pragmatique de termes médicaux et leurs reformulations. Acte des Journées Internationales de Linguistique de Corpus (JLC), 3-7 juillet 2023, Grenoble, France.

Buhnila Ioana. (2023). Une méthode automatique de construction de corpus de reformulation. Thèse de doctorat, Université de Strasbourg, juin 2023.

Buhnila Ioana. (2022b). Identifying Medical Paraphrases in Scientific versus Popularization Texts in French for Laypeople Understanding. In Proceedings of the Third Workshop on Scholarly Document Processing, COLING 22’, Gyeongju, Republic of Korea, pp. 69-79. Association for Computational Linguistics.

Buhnila Ioana. (2022a). Le Rôle Des Marqueurs et Indicateurs Dans l’analyse Lexicale et Sémantico-Pragmatique de Reformulations Médicales. 8e Congrès Mondial de Linguistique Française (CMLF), 4-8 juillet 2022, Orléans, France, SHS Web of Conferences 138: 10005. https://doi.org/10.1051/shsconf/202213810005.

Buhnila Ioana. (2021). Building a Corpus of Medical Paraphrases in Romanian. In Proceedings of the The 16th Edition of the International Conference on Linguistic Resources and Tools for Natural Language Processing – ConsILR-2021, Iasi, Roumanie (online), pp. 139-152.

Grabar Natalia & Cardon Rémi. (2018). CLEAR - Simple Corpus for Medical French. In Proceedings of the 1st Workshop on Automatic Text Adaptation (ATA), pp. 3-9. Tilburg, the Netherlands: Association for Computational Linguistics. https://doi.org/10.18653/v1/W18-7002.

Kilgarriff Adam, Baisa Vít, Bušta Jan, Jakubíček Miloš, Kovář Vojtěch, Michelfeit Jan, Rychlý Pavel & Suchomel Vít. (2014). The Sketch Engine: ten years on. Lexicography 1, pp. 7‑36.

Todirascu Amalia, Pado Sebastian, Krisch Jennifer, Kisselew Max & Heid Ulrich. (2012). French and German Corpora for Audience-Based Text Type Classification. In Proceedings of the Eight International Conference on Language Resources and Evaluation (LREC’12), pp. 1591–1597. Istanbul, Turkey: European Language Resources Association (ELRA).

_________________
_French version_
_________________

# RefoMed

**RefoMed** _(Reformulations Médicales)_ est un corpus de reformulations sous-phrastiques médicales réalisé pendant la thèse de doctorat [Une méthode automatique de construction de corpus de reformulation](https://theses.hal.science/tel-04226255/) par Ioana Buhnila (UR 1339 LiLPa, Linguistique, Langues, Parole, Université de Strasbourg ; RACAI, Institut de Recherche sur l’Intelligence Artificielle de l’Académie Roumaine de Bucarest).

Le corpus **RefoMed** est construit de 10 464 paires de termes médicaux – reformulations médicales et il est divisé en deux parties : 
-	le corpus **RefoMed-FR**, qui contient 7 437 paires de termes médicaux – reformulations médicales en français 🇫🇷
-	le corpus **RefoMed-RO**, qui contient 3 027 paires de termes médicaux – reformulations médicales en roumain 🇷🇴

## Constitution du corpus

La méthode automatique de constitution de corpus de reformulation que nous avons développée est constituée des plusieurs étapes de traitement et annotation:
1. Les phrases contenant des termes médicaux ont été extraites automatiquement en partant des terminologies médicales pour le français et des listes de termes médicaux pour le roumain ;
2. Nous avons constitué des listes de marqueurs de reformulation à partir de l’état de l’art et de nos propres observations sur nos corpus de textes médicaux. Ces marqueurs ont été recherchés dans les phrases qui contiennent des termes médicaux, afin de tester leur utilité dans le marquage d’une reformulation médicale ;
3. Les phrases contenant des termes médicaux et des marqueurs ont été annoté manuellement et validées par plusieurs annotateurs humains non-spécialiste du domaine de la médicine ;
4. Les paires de termes-marqueurs-reformulations correctes et validées constituent le corpus RefoMed (pour plus de détails sur la méthode, voir [Buhnila, 2023](https://theses.hal.science/tel-04226255/))

## Corpus sources

-	ClassYN (Todirascu et al., 2012) - corpus comparable qui comprend des textes scientifiques et des textes de vulgarisation scientifique du domaine de la médecine en français;
-	CLEAR Cochrane (Grabar et Cardon, 2018) - corpus comparable qui contient des résumés scientifiques et des résumés simplifiés du domaine médical;
-	GrandMedRo2 (Buhnila, 2023) - corpus qui contient des textes de vulgarisation médicales extraites depuis la toile avec l'outil de web scraping Sketch Engine  (Kilgarriff et al., 2014).

## Génération automatique de reformulations

Nous avons réalisé des expériences de génération automatique de reformulations en adaptant l'architecture APT à nos données (Buhnila & Todirascu, 2023) (https://github.com/Advancing-Machine-Human-Reasoning-Lab/apt).

Nous partageons les scripts adaptés à la langue française et roumaine avec la communauté.

## Licence

Creative Commons NonCommercial 4.0 International (CC BY-NC 4.0)
https://creativecommons.org/licenses/by-nc/4.0/ 

## Accessibilité au corpus annoté RefoMed

Le corpus français de reformulations médicales **RefoMed-FR** est disponible sous licence CC BY-NC 4.0 pour la recherche.

Pour avoir accès au corpus roumain, **RefoMed-RO**, merci de faire une demande à l'adresse _ioana.buhnila@univ-lorraine.fr_

