# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# CLEAN ERRRRYTHING

ProjectCategory.destroy_all
Category.destroy_all
Location.destroy_all
CompanyType.destroy_all
Project.destroy_all

# CompanyType

action = CompanyType.new(title: "action")
action.save

obligation = CompanyType.new(title: "obligation")
obligation.save

part_social = CompanyType.new(title: "part social")
part_social.save

microcredit = CompanyType.new(title: "microcrédit")
microcredit.save

socinvest = CompanyType.new(title: "société d'investissement")
socinvest.save

ong = CompanyType.new(title: "ong")
ong.save

start_up = CompanyType.new(title: "start up")
start_up.save


# CATEGORY

agriculture = Category.new(title: "agriculture")
agriculture.save

alimentation = Category.new(title: "alimentation")
alimentation.save

energie = Category.new(title: "énergie")
energie.save

pauvrete = Category.new(title: "pauvreté")
pauvrete.save

sante = Category.new(title: "santé")
sante.save

egalite = Category.new(title: "égalité")
egalite.save

envrionnement = Category.new(title: "envrionnement")
envrionnement.save

education = Category.new(title: "éducation")
education.save


# LOCATION

europe = Location.new(title: "Europe")
europe.save

amlat = Location.new(title: "Amérique Latine")
amlat.save

mo = Location.new(title: "Moyen Orient")
mo.save

afrique = Location.new(title: "Afrique Subsaharienne")
afrique.save

asie = Location.new(title: "Asie")
asie.save


# PROJECTS

solifap = Project.create(
  title: "Solifap",
  description: "As worthy housing made worthy lives, Solifap is a solidarity investment company which supports associations fighting against poor housing. More than 60 years after the Abbé Pierre’s “call to kindness insurrection”, poor housing still is a major concern for 12 millions of French people while more and more household can’t afford a decent place to live. So is born Solifap, created by the Abbé Pierre's Foundation to deploy additional means to fight agains poor housing by using crowdfunding. Solifap is using citizen’s solidarity-based savings as a lever to support associations fighting against poor housing to enhance their housing supply, ensure their financial growth and by improving the efficiency of their social & economic development patterns. Solifap hold the Finansol label, so full disclosure and supportivity are guaranteed.
Support associations fighting daily against poor housing to provide practical and long term solutions.",
  amount_needed: 34000,
  amount_collected: 2300,
  minimum_investment: 230,
  exit_timing: 2,
  company_type_id: 2,
  location_id: 2,
  project_manager_profile: "solifap",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/681-solifap",
  rating: 3
  )
ProjectCategory.create(project_id: solifap.id, category_id:pauvrete.id)

bioburger = Project.create(
  title: "Bioburger",
  description: "Premier fast-food 100/%/ bio qui change tous les codes de la restauration rapide. ",
  amount_needed: 20000,
  amount_collected: 3500,
  minimum_investment: 200,
  exit_timing: 2,
  company_type_id: 1,
  location_id: 3,
  project_manager_profile: "bioburger",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/673-bioburger",
  rating: 5
  )
ProjectCategory.create(project_id: bioburger.id, category_id:alimentation.id)

ecomegot = Project.create(
  title: "ecomegot",
  description: "Une solution complète, professionnelle et locale de sensibilisation, collecte et valorisation de mégots de cigarette pour les acteurs privés et publics",
  amount_needed: 17000,
  amount_collected: 2500,
  minimum_investment: 50,
  exit_timing: 2,
  company_type_id: 3,
  location_id: 1,
  project_manager_profile: "ecomegot",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/668-ecomegot",
  rating: 3
  )
ProjectCategory.create(project_id: ecomegot.id, category_id:envrionnement.id)

solarbrother = Project.create(
  title: "solar brother",
  description: "Le spécialiste de la cuisson solaire et de l'allumage solaire démocratise l’expérience et l’utilisation de l’énergie solaire concentré en conjuguant innovation et transfert de connaissances. ",
  amount_needed: 17000,
  amount_collected: 2500,
  minimum_investment: 50,
  exit_timing: 2,
  company_type_id: 2,
  location_id: 2,
  project_manager_profile: "solar brother",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/679-solar-brother",
  rating: 2
  )
ProjectCategory.create(project_id: solarbrother.id, category_id:energie.id)

wheeliz = Project.create(
  title: "wheeliz",
  description: "Le spécialiste de la cuisson solaire et de l'allumage solaire démocratise l’expérience et l’utilisation de l’énergie solaire concentré en conjuguant innovation et transfert de connaissances. ",
  amount_needed: 17000,
  amount_collected: 2500,
  minimum_investment: 50,
  exit_timing: 2,
  company_type_id: 1,
  location_id: 4,
  project_manager_profile: "wheeliz",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/676-wheeliz",
  rating: 1
  )
ProjectCategory.create(project_id: wheeliz.id, category_id:egalite.id)


