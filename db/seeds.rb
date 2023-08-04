 bodyParts = [
  {
    name: "back",
    image: "https://www.jefit.com/images/bodyparts2/back.png"
  },
  {
    name: "biceps",
    image: "https://www.jefit.com/images/bodyparts2/biceps.png"
  },
  {
    name: "cardio",
    image: "https://www.jefit.com/images/bodyparts2/cardio.png"
  },
  {
    name: "core",
    image: "https://www.jefit.com/images/bodyparts2/core.png"
  },
  {
    name: "forearms",
    image: "https://www.jefit.com/images/bodyparts2/forearms.png"
  },
  {
    name: "glutes",
    image: "https://www.jefit.com/images/bodyparts2/glutes.png"
  },
  {
    name: "lower_legs",
    image: "https://www.jefit.com/images/bodyparts2/lower_legs.png"
  },
  {
    name: "shoulders",
    image: "https://www.jefit.com/images/bodyparts2/shoulders.png"
  },
  {
    name: "triceps",
    image: "https://www.jefit.com/images/bodyparts2/triceps.png"
  },
  {
    name: "upper_legs",
    image: "https://www.jefit.com/images/bodyparts2/upper_legs.png"
  },
]

puts "Seeding body parts..."

BodyPart.destroy_all


bodyParts.each do |body_part|
  BodyPart.create!(body_part)
end

puts "Done seeding"

equipments = [
  {
    name: "bands",
    image:
      "https://cdn0.iconfinder.com/data/icons/gym-set-1/32/Powerbands_Resistance_Bands_gym_sport_fitness-256.png",
  },
  {
    name: "barbell",
    image:
      "https://images.pexels.com/photos/949132/pexels-photo-949132.jpeg?auto=compress&cs=tinysrgb&w=600",
  },
  {
    name: "bench",
    image:
      "https://cdn0.iconfinder.com/data/icons/gym-fitness-machine-equipment-flat/128/gym-fitness-machine-equipment-flat-29-256.png",
  },
  {
    name: "dumbbell",
    image:
      "https://cdn0.iconfinder.com/data/icons/fitness-gym-6/56/08_dumbbell-64.png",
  },
  {
    name: "exercise ball",
    image:
      "https://cdn4.iconfinder.com/data/icons/sport-fitness-vol-4-outline-1/512/z4-gym_ball_fitness_exercise-512.png",
  },
  {
    name: "foam roll",
    image:
      "https://cdn3.iconfinder.com/data/icons/pilates-9/504/mat-yoga-pilates-foam-roll-512.png",
  },
  {
    name: "kettlebell",
    image:
      "https://cdn0.iconfinder.com/data/icons/sports-294/512/42-kettlebell-512.png",
  },
  {
    name: "pullbar",
    image:
      "https://cdn3.iconfinder.com/data/icons/exercising-1/64/exercising_pull_up-body_weight-pull_up_bar-exercise-sport-512.png",
  },
  {
    name: "weight plate",
    image:
      "https://cdn1.iconfinder.com/data/icons/gym-life-outline/60/Weight-Plate-Stand-fitness-weights-equipment-512.png",
  },
]


puts "Seeding equipments..."

equipments.each do |equipment|
  Equipment.create!(equipment)
end

puts "Done seeding."




# db/seeds.rb

# Sample user data
# puts "seeding users..."
# users_data = [
#   { username: "john_doe", email: "john@example.com", gender: "Male", password: "password", profile_image: "https://images.pexels.com/photos/1661179/pexels-photo-1661179.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", height: 180, weight: 75, dob: "1990-01-15", is_admin: false },
#   { username: "jane_smith", email: "jane@example.com", gender: "Female", password: "password",  profile_image: "https://thumbs.dreamstime.com/b/large-group-african-safari-animals-wildlife-conservation-concept-174172993.jpg",  height: 165, weight: 60, dob: "1992-06-20", is_admin: true },
#   # Add more sample user data as needed
# ]
#
# puts "Done seeding"
#
# # Seed the users table
# users_data.each do |user_data|
#   User.create!(user_data)
# end
# \

 
#  # puts "Destroying exercises..."
#  #
#  # Exercise.destroy_all
#  #
#  # puts "Done destroying exercises"

#  exercise_ids = [4,5,6,7,8,9,10,11,19,20, 12,13,14,15,16,17,18,21,22,23,24,25,26,27,28,29,30,31]
#  body_part_ids = [2..11]
#  equipment_ids = [1..9]
#  puts 'Seeding exercise body_parts...'

#  exercise_ids.each do |t|
#  ExerciseBodyPart.create(exercise_id: t, body_part_id: rand(2..11))
#  end

#  puts "Done seeding exercise body parts"

#  puts 'Seeding exercise equipments...'

#  exercise_ids.each do |t|
#    ExerciseEquipment.create(exercise_id: t, equipment_id: rand(1..9))
#  end

#  puts "Done seeding exercise equipments"
