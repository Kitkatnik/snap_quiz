# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.delete_all
Question.delete_all

Student.create! name: "Josef",
                email: "josef.diago@gmail.com",
                phone_number: "1234567890"

Question.create! body: "1 + 1",
                 answer: "2"
