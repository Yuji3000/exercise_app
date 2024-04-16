# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: "first user", email: "first@user.com", height_inches: 51 , body_weight: 151)
program1 = Program.create(name: "New Years Pump Up", description: "Doin cool stuff this year")
user_program1 = UserProgram.create(user_id: user1.id, program_id: program1.id)
workout1 = Workout.create(name: "Chest", day_of_week: "monday", program_id: user_program1)
workout2 = Workout.create(name: "Back", day_of_week: "wednesday", program_id: user_program1)
workout3 = Workout.create(name: "Legs", day_of_week: "friday", program_id: user_program1)