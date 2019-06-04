# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Project 1
Project.destroy_all
solifap = Project.new()
solifap.title = "Solifap"
solifap.description = "As worthy housing made worthy lives, Solifap is a solidarity investment company which supports associations fighting against poor housing. More than 60 years after the Abbé Pierre’s “call to kindness insurrection”, poor housing still is a major concern for 12 millions of French people while more and more household can’t afford a decent place to live. So is born Solifap, created by the Abbé Pierre's Foundation to deploy additional means to fight agains poor housing by using crowdfunding. Solifap is using citizen’s solidarity-based savings as a lever to support associations fighting against poor housing to enhance their housing supply, ensure their financial growth and by improving the efficiency of their social & economic development patterns. Solifap hold the Finansol label, so full disclosure and supportivity are guaranteed.
Support associations fighting daily against poor housing to provide practical and long term solutions."
solifap.amount_needed = 200000
solifap.amount_collected = 20000
solifap.minimum_investment = 50000
solifap.rating = 3
solifap.save
