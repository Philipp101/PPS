# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "delete steps and skills from database"

Step.delete_all
Skill.delete_all

puts "creating career steps"

step1 = Step.create!(title: "Engineer for Machines", task: "Did these and that and sth else", institution: "BMW AG")
step2 = Step.create!(title: "Team Leader", task: "Managed the team", institution: "Daimler")
step3 = Step.create!(title: "Internship", task: "worked in a technical department", institution: "Audi AG")
step4 = Step.create!(title: "Diploma Thesis", task: "Did my own project", institution: "Porsche")
step5 = Step.create!(title: "Foreign semester", task: "Studied in another country", institution: "University")

puts "steps created"
puts "creating skills"

skill1 = Skill.create!(kind: "Computer Skill", content: "Ruby on Rails", level: "5")
skill2 = Skill.create!(kind: "Computer Skill", content: "Java Script", level: "5")
skill3 = Skill.create!(kind: "Computer Skill", content: "CSS", level: "5")
skill4 = Skill.create!(kind: "Computer Skill", content: "ANSA", level: "5")
skill5 = Skill.create!(kind: "Computer Skill", content: "MS Sharepoint", level: "5")
skill6 = Skill.create!(kind: "Computer Skill", content: "MS Office", level: "5")
skill7 = Skill.create!(kind: "Computer Skill", content: "Excel VBA", level: "5")
skill8 = Skill.create!(kind: "Computer Skill", content: "Adobe Photoshop", level: "5")
skill9 = Skill.create!(kind: "Computer Skill", content: "Adobe Illustrator", level: "5")
skill10 = Skill.create!(kind: "Computer Skill", content: "DIAdem", level: "5")
skill11 = Skill.create!(kind: "Training", content: "Leadership Training", level: "5")
skill12 = Skill.create!(kind: "Training", content: "BMW Training handling electric vehicles", level: "5")
skill13 = Skill.create!(kind: "Training", content: "Communication", level: "5")
skill14 = Skill.create!(kind: "Language Skill", content: "Spanish", level: "5")
skill15 = Skill.create!(kind: "Language Skill", content: "English", level: "5")

puts "skills created"
puts "done"
