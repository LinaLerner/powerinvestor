# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# CLEAN ERRRRYTHING
ProjectCategory.destroy_all
Project.destroy_all
Category.destroy_all
Location.destroy_all
CompanyType.destroy_all

# CompanyType

socinvest = CompanyType.new(title: "société d'investissement", image: "investissements.png")
socinvest.save


start_up = CompanyType.new(title: "start up", image: "startup.png")
start_up.save

particulier = CompanyType.new(title: "particulier", image: "particulier.png")
particulier.save

entreprise_mature = CompanyType.new(title: "entreprise mature", image: "entreprise.png")
entreprise_mature.save

# CATEGORY

agriculture = Category.new(title: "agriculture", image: "agriculture.png")
agriculture.save

alimentation = Category.new(title: "alimentation", image: "alimentation.png")
alimentation.save

energie = Category.new(title: "énergie", image: "energie.png")
energie.save

pauvrete = Category.new(title: "pauvreté", image: "pauvrete.png")
pauvrete.save

sante = Category.new(title: "santé", image: "sante.png")
sante.save

egalite = Category.new(title: "égalité", image: "egalite.png")
egalite.save

environnement = Category.new(title: "environnement", image: "environnement.png")
environnement.save

education = Category.new(title: "éducation", image: "education.png")
education.save


# LOCATION

europe = Location.new(title: "Europe")
europe.save

amlat = Location.new(title: "Amérique Latine")
amlat.save

mo = Location.new(title: "Moyen Orient")
mo.save

afrique = Location.new(title: "Afrique")
afrique.save

asie = Location.new(title: "Asie")
asie.save

oceanie = Location.new(title: "Océanie")
oceanie.save


# PROJECTS : Lita

solifap = Project.create(
  title: "Solifap",
  impact: "3000 personnes relogées,500 logements remis aux normes,5 foyers construits",
  short_description: "Société d’investissements solidaires de la fondation Abbé Pierre qui utilise l’épargne citoyenne comme une réponse concrète à la lutte contre le mal-logement. ",
  long_description: "Parce que bénéficier d'un logement c'est reconstruire une vie, Solifap est une société d'investissements solidaires qui soutient les associations luttant contre le mal-logement. Plus de 60 ans après « l’appel à l'insurrection de la bonté » de l’Abbé Pierre, la situation du mal-logement en France reste encore une préoccupation majeure pour 12 millions de français. La Fondation Abbé Pierre, qui a pour mission de permettre à toute personne démunie d'accéder à un logement décent et à une vie digne, décide ainsi de créer Solifap en 2014 pour déployer des moyens additionnels pour lutter contre le mal-logement, en s’appuyant sur l’épargne citoyenne. Solifap permet à l’épargne des citoyens de devenir un levier d’action direct afin de soutenir les associations qui luttent contre le mal logement, en augmentant leur capacité à produire des offres de logements très sociaux, en garantissant leur développement financier et en améliorant l'efficacité de leur modèle socio-économique. Solifap est titulaire du label Finansol garantissant la transparence et le caractère solidaire du produit financier qu’elle propose.",
  provider: "Lita",
  amount_needed: 200000,
  amount_collected: 70000,
  minimum_investment: 500,
  exit_timing: 4,
  company_type: start_up,
  location: amlat,
  city: "Paris",
  project_manager_profile: "François Chaillou est Président de Solifap depuis sa création et était auparavant Vice-Président de la Fondation Abbé Pierre. Ingénieur urbaniste de formation, il a été directeur de Soliha Centre Val de Loire, structure solidaire d’amélioration de l’habitat, et gérant de Ficosil, société immobilière ayant pour but de loger des personnes en situation d’exclusion sociale. Son parcours ainsi que son implication, autant auprès de la Fondation Abbé Pierre que de Solifap, lui apporte une réelle expertise ainsi qu’un rôle de connecteur entre les deux structures. À ses côtés Charles Le Gac, est le Directeur Général de Solifap. Issu d’une formation juridique, il a occupé divers postes de dirigeant d’associations dans les domaines de l’éducation populaire, de la solidarité internationale et de la lutte contre l’exclusion. Dernièrement Directeur de la délégation de Paris du Secours Catholique, il a contribué à la création de l’agence immobilière à vocation sociale de l’association. Charles a acquis une solide expérience de management et gestion de projets, d’analyse de projets à impacts et de développement de réseaux de partenariat en France comme à l’international.",
  financial_product: "actions",
  start_date: "08/01/2019",
  end_date: "02/06/2019",
  project_url: "https://fr.lita.co/fr/projects/681-solifap",
  rating: 3
  )
ProjectCategory.create(project_id: solifap.id, category_id:pauvrete.id)

bioburger = Project.create(
  title: "Bioburger",
  short_description: "Premier fast-food 100/%/ bio qui change tous les codes de la restauration rapide. ",
  long_description: "Fondé en 2011 par deux jeunes entrepreneurs passionnés de culture food, Bioburger a pour ambition de changer les codes du fast-food et surtout promouvoir et démocratiser l’agriculture biologique d’une manière différente grâce à un plat aimé de tous : le hamburger. Bioburger est, depuis sa création, l’unique enseigne de restauration rapide 100% bio spécialisée dans le burger gourmet pour carnivores et végétariens. Défendant des valeurs similaires pour développer et démocratiser l’agriculture biologique, la coopérative Biocoop se rapproche de Bioburger en 2018 et en devient actionnaire minoritaire. Développée en franchise depuis 2017 (1 restaurant à date), l’enseigne Bioburger compte à ce jour 4 restaurants en activité répartis entre Paris et La Défense. Bioburger a pour objectif l’ouverture de 30 restaurants d'ici fin 2022, dont 80% en franchises et le reste en succursales.",
  impact: "25 jobs créés, 15 000 burgers bio livrés, 16 écoles sensibilisées",
  provider: "Lita",
  amount_needed: 350000,
  amount_collected: 80000,
  minimum_investment: 258,
  exit_timing: 2,
  company_type: start_up,
  location: europe,
  city: "Paris",
  project_manager_profile: "Camarades de classe, c’est sur les bancs de l’école que Louis Frack et Anthony Darré ont pour la première fois l’idée de créer Bioburger, l’offre de street food et particulièrement de burgers, une offre alors très limitée. À la fin de leurs études, la décision est prise : ils rénovent du sol au plafond un ancien restaurant asiatique et ouvrent en juillet 2011 leur premier point de vente. Ce sera passage de Choiseul en plein cœur de Paris. Ils sont sur tous les fronts et travaillent sans relâche sur les process en restaurant, la logistique, et la rentabilité de chaque restaurant afin de les rendre autonomes. Pari réussi ! Aujourd’hui, Louis Frack est en charge du développement de l’enseigne et des problématiques administratives, financières et juridiques. Anthony Darré, quant à lui, assure la supervision opérationnelle de l’entreprise, du développement produits et des achats.",
  financial_product: "actions ordinaires",
  start_date: "08/08/2019",
  end_date: "02/11/2019",
  project_url: "https://fr.lita.co/fr/projects/673-bioburger",
  rating: 5
  )
ProjectCategory.create(project_id: bioburger.id, category_id:alimentation.id)

ecomegot = Project.create(
  title: "ecomegot",
  impact: "7 millions de mégots collectés, 3650 citoyens sensibi événements de sensisibilisation,200 bornes solidaires installées",
  short_description: "Une solution complète, professionnelle et locale de sensibilisation, collecte et valorisation de mégots de cigarette pour les acteurs privés et publics",
  long_description: "ÉcoMégot propose une solution complète, professionnelle et locale de sensibilisation, collecte et valorisation de mégots de cigarette pour les acteurs privés et publics. Le projet est né au début de l’année 2016, suite à la prise de conscience d’Erwin Faure, son fondateur : aucune solution de dépollution et de recyclage viable des mégots n’existait en France. Inspiré par des initiatives développées à l’étranger, ÉcoMégot a développé une solution innovante mettant en symbiose économie circulaire, emplois locaux et filière de recyclage locale. 100% français, 100% artisanaux et 100% résistants : ÉcoMégot accompagne tous les volontaires, tous secteurs confondus, dans la création de leur propre espace zéro mégot. Le mégot, ce petit déchet polluant tristement fondu dans le paysage urbain, peut devenir une ressource économique et un acteur social. C’est tout le pari lancé par ÉcoMégot !",
  provider: "Lita",
  amount_needed: 200000,
  amount_collected: 190000,
  minimum_investment: 100,
  exit_timing: 2,
  company_type: start_up,
  location: europe,
  city: "Paris",
  project_manager_profile: "Lors d’un voyage en Autriche, Erwin Faure, président et fondateur d’ÉcoMégot, fût surpris du peu de mégots par terre comparé à ce que l’on pouvait voir en France. C'est le déclic : Erwin s'engage à mettre son expérience dans l'entrepreneuriat au service de l'environnement ! Forte de son succès, en 2018, ÉcoMégot fait monter à son bord 2 associés rencontrés au sein de La Maison Pour Rebondir, un espace bordelais dédié à l'entrepreneuriat. Sandrine Poilpré, directrice générale, met ses compétences au service de la stratégie générale, de la communication et du marketing. Edouard Vergé, directeur commercial associé, se charge du développement des antennes et des grands comptes. ",
  financial_product: "actions ordinaires",
  start_date: "08/02/2019",
  end_date: "02/09/2019",
  project_url: "https://fr.lita.co/fr/projects/668-ecomegot",
  rating: 3
  )
ProjectCategory.create(project_id: ecomegot.id, category_id:environnement.id)

solarbrother = Project.create(
  title: "solar brother",
  provider: "Lita",
  short_description: "Le spécialiste de la cuisson solaire et de l'allumage solaire démocratise l’expérience et l’utilisation de l’énergie solaire concentré en conjuguant innovation et transfert de connaissances. ",
  long_description: "Charlotte de Vilmorin est en fauteuil depuis toujours. En parallèle de sa carrière dans la publicité, elle crée le blog Wheelcome où elle raconte de façon humoristique ses aventures de jeune parisienne en fauteuil. Très vite le blog fédère une communauté importante dont beaucoup sont dans une situation semblable à celle de Charlotte. Concernée directement par les difficultés qu’elle rencontre lors de ses déplacements, elle décide alors de quitter son poste et de créer Wheeliz pour faciliter la mobilité des personnes en fauteuil. Wheeliz est le premier site collaboratif de location de voitures aménagées pour les personnes en fauteuil roulant. La plateforme comptabilise fin 2018, 8 000 utilisateurs et 870 véhicules aménagés inscrits et référencés.",
  amount_needed: 200000,
  amount_collected: 130000,
  minimum_investment: 200,
  exit_timing: 9,
  company_type: start_up,
  location: europe,
  city: "Paris",
  project_manager_profile: "Les deux co-fondateurs, Gilles Gallo et Gatien Brault, n’en sont pas à leur premier essai. C'est à 30 ans que Gilles a eu le déclic en partant trouver l'inspiration à Tombouctou. De cette rencontre avec l’Afrique, il a ramené la volonté de développer le solaire thermique et en particulier la cuisson solaire pour faciliter la vie des gens et lutter contre les problèmes de santé liés à la cuisson au bois dans des espaces confinés et contre la déforestation. De son bout du monde, Gilles ramène l’«essence-ciel» dans ses valises. En 2006, Gilles créait Sunited Group rejoins en 2012 par Gatien une société positionnée sur le marché des technologies solaires concentrées industrielles. En 2016 après avoir constaté que ce secteur ne connaît pas encore l’essor suffisant pour lui faire prendre sa place dans le mix énergétique de demain, ils décident de créer Solar Brother dans le but de propager sa connaissance auprès du grand public avec des utilisations ludiques, pédagogiques et pratiques. Gilles s'occupe de l’innovation produits et de la commercialisation et du marketing. Aujourd’hui il est connu et reconnu comme l’un des acteurs clef de la technologie solaire concentré en Europe. Gatien, ingénieur, gère toute la partie Développement,Production, suivi de qualité ainsi que la logistique et Administration de la structure.",
  financial_product: "actions ordinaires",
  start_date: "08/06/2019",
  end_date: "02/06/2019",
  project_url: "https://fr.lita.co/fr/projects/679-solar-brother",
  rating: 2
  )
ProjectCategory.create(project_id: solarbrother.id, category_id:energie.id)

wheeliz = Project.create(
  title: "Paris",
  short_description: "Première plateforme de location solidaire, dédiée aux voitures aménagées pour les personnes en fauteuil roulant. ",
  long_description: "Charlotte de Vilmorin est en fauteuil depuis toujours. En parallèle de sa carrière dans la publicité, elle crée le blog Wheelcome où elle raconte de façon humoristique ses aventures de jeune parisienne en fauteuil. Très vite le blog fédère une communauté importante dont beaucoup sont dans une situation semblable à celle de Charlotte. Concernée directement par les difficultés qu’elle rencontre lors de ses déplacements, elle décide alors de quitter son poste et de créer Wheeliz pour faciliter la mobilité des personnes en fauteuil. Wheeliz est le premier site collaboratif de location de voitures aménagées pour les personnes en fauteuil roulant. La plateforme comptabilise fin 2018, 8 000 utilisateurs et 870 véhicules aménagés inscrits et référencés.",
  provider: "Lita",
  amount_needed: 17000,
  amount_collected: 2500,
  minimum_investment: 50,
  exit_timing: 2,
  company_type: start_up,
  location: europe,
  city: "Paris",
  project_manager_profile: "Charlotte de Vilmorin : Co-fondatrice et CEO : Diplomée du CELSA en stratégie de marque et branding elle commence sa carrière dans la publicité en tant que planneur stratégique. Elle crée le blog Wheelcome qui raconte ses aventures de jeune parisienne en fauteuil. Rémi Janot(Co-fondateur et CTO) : après des études d'informatique, et deux ans au sein d'une entreprise de développement de progiciels, Rémi Janot décide de se consacrer à la création de sites web. Il multiplie alors les expériences et les domaines de compétences (e-commerce, jeu social à fort trafic, services SaaS, infrastructure cloud....) au cours des 6 dernières années, et participe à l’aventure de start-ups à succès comme le jeu Facebook Is Cool. Charlotte et Rémi se rencontrent sur le blog Wheelcome et c'est là que l'aventure commence.",
  financial_product: "actions ordinaires",
  start_date: "08/06/2019",
  end_date: "02/06/2019",
  project_url: "https://fr.lita.co/fr/projects/676-wheeliz",
  rating: 1
  )
ProjectCategory.create(project_id: wheeliz.id, category_id:egalite.id)

# PROJETS : Wiseed

terraliacorporate = Project.create(
  title: "Terralia Corporate",
  short_description: "Première plateforme de location solidaire, dédiée aux voitures aménagées pour les personnes en fauteuil roulant. ",
  long_description: "L’équipe dirigeante nous présente, par cette opportunité de financement Corporate fléché, une vraie stratégie à moyen terme en intégrant des opérations de qualité, qui est clairement identifiée, et respectant une chronologie cohérente dans leur stratégie de développement. Il s'agit ici de financer une partie des fonds propres de 15 projets immobiliers (le Clos Saint-Vincent, Villa Tivoli, Veymerange, Montigny-les-Metz, Villiers-sur-Mer, les Jardins Saint-Sauveur, le Clos de la Côte Fleurie, les Jardins de Cattenom, les Jardins de Saint-Jacques, les Jardins de Bellevue 3, les Jardins de Berg, Flévy, les Jardins de Rosières 2, les Jardins de Chatel 2, les Jardins de Louvigny). Les projets en cours de montage ne seront pas présentés dans le document annexe. Cependant leurs plannings correspondent à la durée de l'emprunt.",
  provider: "Wiseed",
  amount_needed: 1500000,
  amount_collected: 2500,
  minimum_investment: 100,
  exit_timing: 24,
  company_type: entreprise_mature,
  location: europe,
  city: "Metz",
  project_manager_profile: "Le groupe TERRALIA IMMOBILIER est un aménageur foncier & promoteur avec lequel nous avons financé et remboursé 1 projet : les Jardins de Mexy (Mexy). TERRALIA se présente cette fois en tant qu'entreprise pour une levée de fonds Corporate fléché* qui permettra de financer le développement de son portefeuille d'opérations. Le groupe TERRALIA IMMOBILIER, fondé en 2006, a développé une expertise sur les activités Aménagement Foncier et Lotissement pour devenir en quelques années un des leaders sur cette activité en région Lorraine. Cette expertise a permis de développer des compétences sur les méthodes de recherche et d’analyse du foncier. Compte tenu de la rareté du foncier disponible et aménageable, le Groupe a mis à profit ces compétences sur un domaine connexe, la promotion immobilière.",
  financial_product: "obligations amortissables",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.wiseed.com/fr/projet/26071561-terralia-corporate",
  rating: 2
  )
ProjectCategory.create(project_id: terraliacorporate.id, category_id:environnement.id)

agronutris = Project.create(
  title: "Agronustris",
  short_description: "Située en Occitanie, près de Toulouse, Agronutris (émanation de Micronutris) est une société de Biotechnologie dédiée au développement de l’industrie de l’insecte comme réponse aux enjeux alimentaires de demain.",
  long_description: "Après une 1ère levée de fonds réussie de Micronutris auprès des WiSEEDers en 2015, le fondateur et l'équipe R&D s'associent à une équipe de dirigeants expérimentés pour créer une activité distincte, exclusivement consacrée au BtoB : Agronutris. Cette nouvelle équipe fait appel aux WiSEEDers afin d’accompagner ce développement prometteur.",
  provider: "Wiseed",
  amount_needed: 300000,
  amount_collected: 2500,
  minimum_investment: 100,
  exit_timing: 4,
  company_type: entreprise_mature,
  location: europe,
  city: "Toulouse",
  project_manager_profile: "Agronutris est le fruit de l’association entre l’équipe R&D historique de Micronutris et une équipe expérimentée de l’Agro-industrie. En effet, Agronutris se distingue par une expérience unique de 7 ans dans l’élevage d’insectes avec une équipe de 7 personnes en R&D et Production ayant une expérience cumulée de plus de 30 ans. Cette équipe a été renforcée par des experts de l’Agro-industrie qui ont opéré des entreprises et des usines très significatives de plusieurs centaines de millions d’euros. Cette configuration positionne favorablement Agronutris pour réussir l’enjeu majeur de passage à l’échelle industrielle et crée les conditions pour en faire un acteur prépondérant de la filière insectes.",
  financial_product: "via société intermédiaire",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.wiseed.com/fr/projet/24080617-agronutris",
  rating: 5
  )
ProjectCategory.create(project_id: agronutris.id, category_id:alimentation.id)

herami = Project.create(
  title: "Hera-mi",
  short_description: "L'objectif d'Hera-MI est de mettre l'intelligence artificielle au service du diagnostic radiologique du cancer du sein.",
  long_description: "Face à ces problématiques, notre ambition est d’accélérer et de fiabiliser le diagnostic radiologique du cancer du sein grâce à l’intelligence artificielle. Hera-MI a donc développé la solution Breast-SlimView, une solution brevetée de lecture et d’aide à la décision en mammographie 2D et 3D. Breast-SlimView offre un support de lecture innovant et disruptif où seule l’information pertinente est affichée. Le radiologue pourra s’affranchir de l’information superflue. il pourra donc visualiser en un coup d’oeil les zones suspectes. Hera-MI aide les radiologues à se recentrer sur leur cœur de métier, là où se trouve leur valeur ajoutée: l’analyse des zones cliniquement suspectes.",
  provider: "Wiseed",
  amount_needed: 300000,
  amount_collected: 3500,
  minimum_investment: 100,
  exit_timing: 14,
  company_type: entreprise_mature,
  location: europe,
  city: "Bourgneuf En Retz",
  project_manager_profile: "herami est le fruit de l’association entre l’équipe R&D historique de Micronutris et une équipe expérimentée de l’Agro-industrie. En effet, herami se distingue par une expérience unique de 7 ans dans l’élevage d’insectes avec une équipe de 7 personnes en R&D et Production ayant une expérience cumulée de plus de 30 ans. Cette équipe a été renforcée par des experts de l’Agro-industrie qui ont opéré des entreprises et des usines très significatives de plusieurs centaines de millions d’euros. Cette configuration positionne favorablement herami pour réussir l’enjeu majeur de passage à l’échelle industrielle et crée les conditions pour en faire un acteur prépondérant de la filière insectes.",
  financial_product: "via société intermédiaire",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.wiseed.com/fr/projet/24080617-herami",
  rating: 2
  )
ProjectCategory.create(project_id: herami.id, category_id:sante.id)

# PROJETS : Babyloan

nuevaluz = Project.create(
  title: "Nueva Luz",
  short_description: "Jennifer possède une petite boutique dans laquelle elle loue des décorations pour événements festifs et vend aussi des vêtements pour enfants.",
  long_description: " Jennifer possède une petite boutique dans laquelle elle loue des décorations pour événements festifs et vend aussi des vêtements pour enfants. Elle sollicite un mircrocrédit pour renouveler son stock de décorations et de vêtements afin de satisfaire sa clientèle. Elle remercie la communauté de Babyloan de l'aider à développer son activité.",
  provider: "Babyloan",
  amount_needed: 960,
  amount_collected: 0,
  minimum_investment: 10,
  exit_timing: 14,
  company_type: particulier,
  location: amlat,
  city: "San Juan de Lurigancho",
  project_manager_profile: "Jennifer a 33 ans. Elle est mariée et mère de 3 enfants, est membre du groupe de prêt NUEVA LUZ",
  financial_product: "microcredit",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.babyloan.org/fr/projets_solidaires/jennifer-carole-t/la-boutique-de-jennifer-408874/42645",
  rating: 1
  )
ProjectCategory.create(project_id: nuevaluz.id, category_id:pauvrete.id)

can = Project.create(
  title: "Can",
  short_description: "Can sollicite un prêt pour acheter du bétail ce qui lui permettra d'agrandir la taille de son troupeau et d'augmenter sa production. Can espère que grâce aux bénéfices de son activité, sa famille sera heureuse et se maintiendra en bonne santé.",
  long_description: "Elle est agricultrice et élève des porcs et du bétail depuis plus de 10 ans. Elle vient d'une famille aux faibles revenus et son travail est instable. Can est une personne appréciée de sa communauté. Elle a déjà bénéficié de 5 prêts qu'elle a remboursé avec succès. La principale difficulté à laquelle elle doit faire face est le manque de capital. Elle sollicite un prêt pour acheter du bétail ce qui lui permettra d'agrandir la taille de son troupeau et d'augmenter sa production. Can espère que grâce aux bénéfices de son activité, sa famille sera heureuse et se maintiendra en bonne santé.",
  provider: "Babyloan",
  amount_needed: 960,
  amount_collected: 0,
  minimum_investment: 10,
  exit_timing: 12,
  company_type: particulier,
  location: asie,
  city: "Nong Cong",
  project_manager_profile: "Can a 60 ans, elle est mariée et a 5 enfants. Elle vit à Nong Cong, une région rurale de la province de Thanh Hoa.",
  financial_product: "microcredit",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.babyloan.org/fr/projets_solidaires/c259n-l/lelevage-bovin-de-can/43217",
  rating: 1
  )
ProjectCategory.create(project_id: can.id, category_id:pauvrete.id)

chris = Project.create(
  title: "chris",
  short_description: "Son projet actuel est de réaliser des interviews de différentes personnalités de cette communauté et de proposer son reportage à des chaines de télévisions nigérianes. Il souhaite montrer aux Nigérians les différences et les similitudes entre la vie au Nigéria et la vie en Belgique. Il sollicite un microcrédit afin de louer l'équippement nécessaire à la réalisation de son reportage. ",
  long_description: "Son projet actuel est de réaliser des interviews de différentes personnalités de cette communauté et de proposer son reportage à des chaines de télévisions nigérianes. Il souhaite montrer aux Nigérians les différences et les similitudes entre la vie au Nigéria et la vie en Belgique. Il sollicite un microcrédit afin de louer l'équippement nécessaire à la réalisation de son reportage.",
  provider: "Babyloan",
  amount_needed: 1000,
  amount_collected: 545,
  minimum_investment: 10,
  exit_timing: 12,
  company_type: particulier,
  location: europe,
  city: "Anvers",
  project_manager_profile: "chris a 60 ans, elle est mariée et a 5 enfants. Elle vit à Nong Cong, une région rurale de la province de Thanh Hoa.",
  financial_product: "microcredit",
  start_date: "01/02/2019",
  end_date: "02/06/2019",
  project_url: "https://www.babyloan.org/fr/projets_solidaires/chris-d/le-reportage-de-chris-/43325",
  rating: 1
  )
ProjectCategory.create(project_id: chris.id, category_id:pauvrete.id)
