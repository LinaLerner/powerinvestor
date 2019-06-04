# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# CLEAN ERRRRYTHING

Project.destroy_all
CompanyType.destroy_all
Category.destroy_all
Location.destroy_all

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

solifap = Project.new(
  title: "Solifap",
  description: "As worthy housing made worthy lives, Solifap is a solidarity investment company which supports associations fighting against poor housing. More than 60 years after the Abbé Pierre’s “call to kindness insurrection”, poor housing still is a major concern for 12 millions of French people while more and more household can’t afford a decent place to live. So is born Solifap, created by the Abbé Pierre's Foundation to deploy additional means to fight agains poor housing by using crowdfunding. Solifap is using citizen’s solidarity-based savings as a lever to support associations fighting against poor housing to enhance their housing supply, ensure their financial growth and by improving the efficiency of their social & economic development patterns. Solifap hold the Finansol label, so full disclosure and supportivity are guaranteed.
Support associations fighting daily against poor housing to provide practical and long term solutions.",
  amount_needed: 20000,
  amount_collected: 3500,
  minimum_investment: 50000,
  exit_timing: 2,
  company_type_id: 2,
  financial_product: action,
  project_manager_profile: "solifap",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/681-solifap",
  rating: 3
  )
solifap.save

bioburger = Project.new(
  title: "bioburger",
  description: "Premier fast-food 100/%/ bio qui change tous les codes de la restauration rapide. ",
  amount_needed: 20000,
  amount_collected: 3500,
  minimum_investment: 50000,
  exit_timing: 2,
  company_type_id: 2,
  financial_product: action,
  project_manager_profile: "bioburger",
  start_date: DateTime.parse("08/06/2019 19:00"),
  end_date: DateTime.parse("02/06/2019 19:00"),
  project_url: "https://fr.lita.co/fr/projects/681-bioburger",
  rating: 3
  )
bioburger.save
