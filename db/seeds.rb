# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # student = Student.create!(first_name: "Dwight", last_name: "Schrute", email: "dwight@schrute.com", phone:"6543678", bio: "Owns a beet farm", linkedin:"LI.com", twitter: "@schrute", website:"SchruteBeets.com", resume:"ResumeLink.com", github: "DS@github.com", photo:"photoURL")

  # student = Student.create!(first_name: "Jimmy", last_name: "Neutron", email: "jimmy@neutron.com", phone:"1800JIMMY", bio: "Loves science", linkedin:"LI.com", twitter: "@neutron", website:"NeutronScience.com", resume:"ResumeLink.com", github: "JN@github.com", photo:"photoURL")

  # student = Student.create!(first_name: "Baby", last_name: "Yoda", email: "baby@yoda.com", phone:"73294323932", bio: "Once was rescued by a Mando", linkedin:"LI.com", twitter: "@bbyoda", website:"BabyYoda.com", resume:"ResumeLink.com", github: "BBYDA@github.com", photo:"photoURL")

  education = Education.create!(start_date: "07/06/17", end_date: "08/10/19", degree: "Bachelors", university: "Univerity university", details: "Earned degree", student_id: 2)
  education = Education.create!(start_date: "04/06/15", end_date: "12/10/17", degree: "Bachelors", university: "Arizona state", details: "Earned degree", student_id: 1)
  education = Education.create!(start_date: "02/13/19", end_date: "07/20/20", degree: "Bachelors", university: "University of Hawai'i", details: "Did stuff", student_id: 3)

  capstone = Capstone.create!(name: "the capstone", description: "capstone stuff", url: "capstone.com", screenshot: "thecapstoneee.com", student_id: 2)
  capstone = Capstone.create!(name: "idk", description: "stuff", url: "capstone.com", screenshot: "thecapstoneee.com", student_id: 3)

  # skill = Skill.create!(skill_name:"Vue.js", student_id: "1")
  # skill = Skill.create!(skill_name:"HTML", student_id: "3")

  # experience = Experience.create!(id: 1, start_date: "January 1, 2014", end_date: "February 1, 2015", job_title: "paper salesman", company: "Dunder Mifflin", details: "I sold paper", student_id: 1)

  # experience = Experience.create!(id: 2, start_date: "June 1, 2012", end_date: "June 5, 2012", job_title: "newspaper boy", company: "Wall Street Journal", details: "I delivered paper", student_id: 3)

  # experience = Experience.create!(id: 3, start_date: "November 10, 2009",end_date: "August 15, 2013", job_title: "cashier", company: "711", details: "I rang people up", student_id: 2)

