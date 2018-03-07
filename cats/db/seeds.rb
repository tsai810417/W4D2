# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cats = Cat.create([
  {birth_date: Date.new(2017,05,05), color: "black", name: "cat1", sex: "F", description: "I'm cat1"},
  {birth_date: Date.new(2016,03,05), color: "grey", name: "cat2", sex: "M", description: "I'm cat2"},
  {birth_date: Date.new(2012,01,15), color: "white", name: "cat3", sex: "M", description: "I'm cat3"},
  {birth_date: Date.new(1954,01,01), color: "red", name: "cat4", sex: "F", description: "I'm cat4"},
  {birth_date: Date.new(2030,03,24), color: "pink", name: "cat5", sex: "F", description: "I'm cat5"},
  {birth_date: Date.new(2000,07,11), color: "orange", name: "cat6", sex: "F", description: "I'm cat6"}
  ])
