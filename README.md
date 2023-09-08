# RefoMed

RefoMed (Reformulations Médicales) est un corpus de reformulations sous-phrastiques médicales réalisé pendant la thèse de doctorat "Une méthode automatique de construction de corpus de reformulation" par Ioana Buhnila (UR 1339 LiLPa, Linguistique, Langues, Parole, Université de Strasbourg ; RACAI, Institut de Recherche sur l’Intelligence Artificielle de l’Académie Roumaine de Bucarest).

Le corpus RefoMed est construit de 11 653 paires de termes médicaux – reformulations médicales et il est divisé en deux parties : 

•	le corpus RefoMed-Fr, qui contient 8 626 paires de termes médicaux – reformulations médicales en français

•	le corpus RefoMed-Ro, qui contient 3 027 paires de termes médicaux – reformulations médicales en roumain

# Constitution du corpus

La méthode automatique de constitution de corpus de reformulation que nous avons développée est constituée des plusieurs étapes de traitement et annotation:
1. Les phrases contenant des termes médicaux ont été extraites automatiquement en partant des terminologies médicales pour le français et des listes de termes médicaux pour le roumain ;
2. Nous avons constitué des listes de marqueurs de reformulation à partir de l’état de l’art et de nos propres observations sur nos corpus de textes médicaux. Ces marqueurs ont été recherchés dans les phrases qui contiennent des termes médicaux, afin de tester leur utilité dans le marquage d’une reformulation médicale ;
3. Les phrases contenant des termes médicaux et des marqueurs ont été annoté manuellement et validées par plusieurs annotateurs humains non-spécialiste du domaine de la médicine ;
4. Les paires de termes-marqueurs-reformulations correctes et validées constituent le corpus RefoMed.

# Corpus sources
•	ClassYN (Todirascu et al., 2012) - corpus comparable qui comprend des textes scientifiques et des textes de vulgarisation scientifique du domaine de la médecine en français;

•	CLEAR Cochrane (Grabar et Cardon, 2018) - corpus comparable qui contient des résumés scientifiques et des résumés simplifiés du domaine médical;

•	GrandMedRo2 (Buhnila, 2023) - corpus qui contient des textes de vulgarisation médicales extraites depuis la toile avec l'outil de web scraping Sketch Engine  (Kilgarriff et al., 2014).

# Tâche de génération automatique de reformulations
Nous avons réalisé des expériences de génération automatique de reformulations en adaptant l'architecture APT à nos données (https://github.com/Advancing-Machine-Human-Reasoning-Lab/apt). 
Nous partageons les scripts adaptés à la langue française et roumaine avec la communauté.

# Licence
Creative Commons NonCommercial 4.0 International (CC BY-NC 4.0)

https://creativecommons.org/licenses/by-nc/4.0/ 

# Accessibilité au corpus annoté RefoMed

Le corpus de reformulations médicales RefoMed est disponible sous licence CC BY-NC 4.0 pour la recherche.
Pour avoir accès au corpus RefoMed, merci de faire une demande à l'adresse ioana.buhnila@etu.unistra.fr

# Références

Buhnila Ioana. (2021). Building a Corpus of Medical Paraphrases in Romanian. In Proceedings of the The 16th Edition of the International Conference on Linguistic Resources and Tools for Natural Language Processing – ConsILR-2021, Iasi, Romania (online), pp. 139-152.

Buhnila Ioana. (2022a). Le Rôle Des Marqueurs et Indicateurs Dans l’analyse Lexicale et Sémantico-Pragmatique de Reformulations Médicales. 8e Congrès Mondial de Linguistique Française (CMLF), 4-8 juillet 2022, Orléans, France, SHS Web of Conferences 138: 10005. https://doi.org/10.1051/shsconf/202213810005.

Buhnila Ioana. (2022b). Identifying Medical Paraphrases in Scientific versus Popularization Texts in French for Laypeople Understanding. In Proceedings of the Third Workshop on Scholarly Document Processing, COLING 22’, Gyeongju, Republic of Korea, pp. 69-79. Association for Computational Linguistics.
