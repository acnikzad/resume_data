# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  student = Student.create!(first_name: "Dwight", last_name: "Schrute", email: "dwight@schrute.com", phone:"6543678", bio: "Owns a beet farm", linkedin:"LI.com", twitter: "@schrute", website:"SchruteBeets.com", resume:"ResumeLink.com", github: "DS@github.com", photo:"photoURL")

  student = Student.create!(first_name: "Jimmy", last_name: "Neutron", email: "jimmy@neutron.com", phone:"1800JIMMY", bio: "Loves science", linkedin:"LI.com", twitter: "@neutron", website:"NeutronScience.com", resume:"ResumeLink.com", github: "JN@github.com", photo:"photoURL")

  student = Student.create!(first_name: "Baby", last_name: "Yoda", email: "baby@yoda.com", phone:"73294323932", bio: "Once was rescued by a Mando", linkedin:"LI.com", twitter: "@bbyoda", website:"BabyYoda.com", resume:"ResumeLink.com", github: "BBYDA@github.com", photo:"photoURL")

