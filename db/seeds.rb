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

# puts "Seeding body parts..."
#
# BodyPart.destroy_all
#
#
# bodyParts.each do |body_part|
#   BodyPart.create!(body_part)
# end
#
# puts "Done seeding"

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


# puts "Seeding equipments..."
#
# equipments.each do |equipment|
#   Equipment.create!(equipment)
# end
#
# puts "Done seeding."




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


 exercises = [
   {
     "id": 4,
     "name": "45° side bend",
     "description": "<ol><li>Adjust the seat of the hyperextension bench so that your upper body can pivot comfortably at your hips toward the floor.&nbsp;</li><li>Rest the side of the thigh on the pads. Proper tense your leg, so that it stay in place. Put your hands either at your ears, behind your head or across your body.</li><li>Squeeze the butt and lower your body, so it’s on an angle.</li><li>Hold for a second and return to the starting position.</li><li>Complete the desired number of reps and repeat on the other side.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690981447/mmw88au0ujnnp1u83djs.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 5,
     "name": "3/4 sit-up",
     "description": "<ol><li>Lie down on the floor and secure your feet. Your legs should be bent at the knees.</li><li>Place your hands behind or to the side of your head. You will begin with your back on the ground. This will be your starting position.</li><li>Flex your hips and spine to raise your torso toward your knees.</li><li>At the top of the contraction your torso should be perpendicular to the ground. Reverse the motion, going only Â¾ of the way down.</li><li>Repeat for the recommended amount of repetitions.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690983495/vqfb3opufkjvjyrghbvw.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 6,
     "name": "air bike",
     "description": "<ol><li>Lay supine in a relaxed position with your arms behind your head and legs straight.</li><li>Exhale as you raise one knee towards your face while driving the opposite elbow to the knee.</li><li>Once your abs are fully contracted, slowly lower yourself back to the starting position and repeat on the opposite side.</li><li>Complete for the assigned number of repetitions.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690983673/xprou51gw5y9kkc7zjgl.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 7,
     "name": "all fours squad stretch",
     "description": "<ol><li>Start off on your hands and knees, then lift your leg off the floor and hold the foot with your hand.</li><li>Use your hand to hold the foot or ankle, keeping the knee fully flexed, stretching the quadriceps and hip flexors.</li><li>Focus on extending your hips, thrusting them towards the floor. Hold for 10-20 seconds and then switch sides.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690983735/t663dt2lylcjjzlscvd3.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 8,
     "name": "alternate heel touchers",
     "description": "<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">1. Lie on your back, keep your knees bent, arms at the sides, and keep your back and feet flat on the mat.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">2. Crunch forward and to the left, touching your left heel with your left hand and hold.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">3. Return slowly to the starting position and repeat the movement on the right side.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">4. Repeat this side-to-side movement until the set is complete.Lie on your back, keep your knees bent, arms at the sides, and keep your back and feet flat on the mat.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">2. Crunch forward and to the left, touching your left heel with your left hand and hold.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">3. Return slowly to the starting position and repeat the movement on the right side.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">4. Repeat this side-to-side movement until the set is complete.</span></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690983827/axxurh1j7o9byzwlldtp.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 9,
     "name": "alternate lateral pulldown",
     "description": "<ol><li>Grasp the bar with a wide grip with an overhand, knuckles-up grip. Other positions and grips are possible but start with this standard position.</li><li>Pull the bar down until it's approximately level with the chin. Exhale on the downward motion. While shifting slightly backward is OK, aim to keep your upper torso stationary.&nbsp;Keep your&nbsp;feet flat on the floor and engage your abs as you pull. The bottom of the motion should be where your elbows can't move downward anymore without moving backward. Be sure to stop at that point and do not go lower.</li><li>Squeeze the shoulder blades together while maintaining square shoulders.</li><li>From the bottom position, with the bar close to your chin, slowly return the bar to the starting position while controlling its gradual ascent. Don't let it crash into the weight plates.</li><li>Continue until you complete eight&nbsp;to 12 repetitions in a set. Rest, then continue to complete your program of sets.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690983980/fvlg506wvu4y6kg4njya.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 10,
     "name": "ankle circles",
     "description": "<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">1. Stand upright with your feet hip-width apart and your arms by your sides.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">2. Shift your weight to the right leg and point your left toes down into the ground.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">3. Start rotating your left foot, making small circles with your ankles.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">4. Repeat the exercise with your right foot.</span></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984042/wortzme4fpdj3nf4hchj.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 11,
     "name": "archer pull up",
     "description": "<ol><li>Using a pronated grip, grasp the pull up bar with a slightly wider than shoulder width grip.</li><li>Take a deep breath, squeeze your glutes and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the lats.</li><li>Pull your chin towards one side of the bar until the lats are fully contracted, then slowly shift to the other side of the bar without changing the height of your body. Once the shift is complete, lower yourself back to the start position and repeat for the assigned number of repetitions.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984170/ype6g4vjbgtn6hc8zwnk.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 19,
     "name": "assisted hanging knee raise with throw down",
     "description": "<ol><li>Hang from a pull-up bar with your arms extended and your feet together (use ab straps if your grip is weak). Lock a slight bend in your knees. This will be your starting position.</li><li>Without swinging your body, contract your lower abs to raise your knees just past a position in which your thighs are parallel to the floor.</li><li>As your pelvis begins to curl upward, your partner should forcefully press down just above your knees to push your legs back to the starting position.</li><li>Engage your abs and try to resist the movement. With their free hand your partner can push against your lower back to ensure your body doesnâ€™t swing.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985059/sxpcudhu9wjocu62bgam.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 20,
     "name": "assisted hanging knee raise with throw down",
     "description": "<ol><li>Face a wall and stand 12 inches away from it.</li><li>Extend one leg behind you, keeping both feet flat on the floor and your rear knee straight.</li><li>Lean toward the wall until you feel tension in the calf muscle of the extended leg. (You can put your arms on the wall for support.)</li><li>Hold for up to 30 seconds.</li><li>Repeat with the other leg.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985202/aecpipettrfpghsojrjp.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 12,
     "name": "archer push up",
     "description": "<ol><li>1.&nbsp;Get into an all-fours position with your knees and toes flexed and in contact with the floor. Your hips should be over your knees. Position your hands wider than your shoulders. Your hands should be outwardly rotated so your fingers are pointed away from your body and a straight line is formed from your shoulders to your hands.</li><li>2.&nbsp;Grip the ground with your hands and rotate your shoulders outward to engage your lats. Straighten your legs to lift your knees off of the ground so you end up in a&nbsp;<a href=\"https://www.masterclass.com/articles/high-plank-exercise-guide\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">high plank</a>&nbsp;position. Place your legs together or keep them hip-width apart.</li><li>3.&nbsp;Pre-tension your shoulders and hips with a good inhale and exhale while engaging your core. Squeeze your quads and glutes. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin. All repetitions should begin from this starting position.</li><li>4.&nbsp;Maintain a strong core position and shift your upper body toward your right side. Pull your right chest toward your right hand as you bend your right elbow. Allow your right shoulder and hand to inwardly rotate as you lower into the push-up position.</li><li>5.&nbsp;As you lower toward the right side, allow your left arm to straighten. Your left arm should be fully extended, forming a straight line from your shoulder to your hand. Your right elbow should finish close to your ribcage.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984350/ohxwxz5w3s66qrryejjd.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 13,
     "name": "arm slingers hanging bent knee legs",
     "description": "<ol><li>Exhale as you lift your feet off the ground, raising your straight legs outward in front of you. Tilt your pelvis slightly back and&nbsp;<a href=\"https://www.verywellfit.com/how-to-engage-your-core-the-right-way-4783531\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 87, 207); background-color: initial;\">engage your abdominals and hip flexors</a>&nbsp;to assist with the movement.</li><li>Raise your legs to a level that feels challenging but still enables you to keep good form. Strive to get them parallel to the ground (so that your hips are bent at 90 degrees), or a little higher if you can.</li><li>Lower your legs back down slowly until they return to the starting position, inhaling during this portion of the exercise. Maintain your posterior pelvic tilt, even at the bottom of the movement.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984431/xewlpdydmivbmeb9tkwy.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 14,
     "name": "arm slingers hanging straight legs",
     "description": "<ol><li>Grab the bar overhead with an overhand grip wider than shoulder-width apart, maintaining fully extended arms and straight legs.</li><li>Exhale and raise your legs, keeping them straight.</li><li>Continue to raise your legs until you cannot do so any longer.</li><li>Try to avoid moving your arms or upper body at all during this movement.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984502/pqfxjomr3wod2nbti8m2.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 15,
     "name": "arms apart circular toe touch (male)",
     "description": "<p>1.<strong>Lay on your back</strong>, with your legs extending up vertically towards the ceiling.</p><p>2.<strong>Extend your arms forward</strong>, keeping them straight. They should be parallel to your legs.</p><p>3.<strong>Crunch forwards,</strong>&nbsp;reaching up to your toes with your outstretched arms. Your head, shoulders, and upper back should come off the ground when performing a toe touch.</p><p>4.<strong>Lower yourself,</strong>&nbsp;and repeat steps 2 and 3. Aim for 8-12 reps and 3 sets.</p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984706/qhvqgfbdhcjovbeeiae7.gif",
     "intensity_type": "Reps"
   },
   {
     "id": 16,
     "name": "arms overhead full sit-up (male)",
     "description": "<ol><li>Lie face-up on the floor. Bend your knees so your feet are flat on the floor. Plant your feet firmly, tucking them under a bench or some sort of other brace if you have to. If you have a partner, you can have them hold your feet down (it’s worth noting that the ideal way to perform sit-ups is without a foot brace—you may want to work on strengthening your core until you get to that point before attempting sit-ups, for optimal results).&nbsp;</li><li>Cross your arms over your chest. Your left hand should rest on your right shoulder and vice versa. Don’t put your hands behind your head, as this can cause you to pull on your neck.&nbsp;</li><li>Engage your core. To do so, take a deep breath and think of drawing your belly button to your spine. Your core should be&nbsp;<a href=\"https://www.verywellfit.com/how-to-engage-your-core-the-right-way-4783531\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 87, 207); background-color: initial;\">fully engaged</a>&nbsp;before you start your first rep.&nbsp;</li><li>Use your ab muscles to lift your back off of the ground. Your tailbone and hips should remain static and pressed into the floor until you’re fully upright. It may help to think about lifting one vertebra at a time, rather than lifting your entire back all at once. This is where the sit-up gets its other names, curl-up and roll-up—picture yourself curling up one back bone at a time, until you’re sitting all the way up.&nbsp;</li><li>With immense control, lower yourself back to the starting position. This time, picture yourself uncurling one vertebrae at a time, starting with your lower back. Do not thud into the floor.&nbsp;</li><li>Once you’re lying face-up again, re-engage your core to start another rep. Repeat until you finish your set.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984810/tual4i2iicqexjr0ggqb.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 8,
         "name": "pullbar",
         "image": "https://cdn3.iconfinder.com/data/icons/exercising-1/64/exercising_pull_up-body_weight-pull_up_bar-exercise-sport-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 9,
         "name": "shoulders",
         "image": "https://www.jefit.com/images/bodyparts2/shoulders.png"
       }
     ]
   },
   {
     "id": 17,
     "name": "assisted chest dip (kneeling)",
     "description": "<p>Use a bench or chair to perform triceps dips.</p><p><br></p><ol><li>Sit on the edge of a sturdy chair,&nbsp;or&nbsp;<a href=\"https://www.verywellfit.com/best-weight-benches-4172091\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 87, 207); background-color: initial;\">weight bench</a>, your hands facing forward, fingers griping the edge beside your hips.</li><li>Extend your legs and place your feet about hip-width apart with your heels on the ground. Look straight ahead.</li><li>Press your weight into your palms and lift yourself up, sliding your bottom forward so it is off the edge of the chair or bench.</li><li>Lower yourself by bending your elbows and lower to 45 to 90 degrees. Go slowly with control.</li><li>Push yourself back up until your arms are straight.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984894/mcakzsxbl50c6ipg4uv9.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 3,
         "name": "bench",
         "image": "https://cdn0.iconfinder.com/data/icons/gym-fitness-machine-equipment-flat/128/gym-fitness-machine-equipment-flat-29-256.png"
       }
     ],
     "body_parts": [
       {
         "id": 9,
         "name": "shoulders",
         "image": "https://www.jefit.com/images/bodyparts2/shoulders.png"
       }
     ]
   },
   {
     "id": 18,
     "name": "assisted hanging knee raise",
     "description": "<p>Stand in the captain's chair frame and place your forearms on the padded armrests. Grab the handles, if available. Check that your arm position is firm (stable arms enable you to lift your legs with proper form). Your back should be straight.</p><p><br></p><ol><li>Inhale and engage your abdominal muscles to prepare for the leg lift.</li><li>Bend your knees slightly and raise your legs upward until your&nbsp;<a href=\"https://www.verywellfit.com/what-are-the-quadriceps-muscle-3498378\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(13, 87, 207); background-color: initial;\">quads</a>&nbsp;are parallel to the ground.</li><li>Lower your legs in a controlled movement, exhaling as you go, until you're back in the starting position. Keep your core engaged.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690984965/oaw4v5tzgde7amrrhchf.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 6,
         "name": "foam roll",
         "image": "https://cdn3.iconfinder.com/data/icons/pilates-9/504/mat-yoga-pilates-foam-roll-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 8,
         "name": "lower_legs",
         "image": "https://www.jefit.com/images/bodyparts2/lower_legs.png"
       }
     ]
   },
   {
     "id": 21,
     "name": "assisted lying glutes stretch",
     "description": "<ol><li>From a lying position, bend your knees and keep your feet on the floor.</li><li>Place your ankle of one foot on your opposite knee.</li><li>Grasp the thigh or knee of the bottom leg and pull both of your legs into the chest. Relax your neck and shoulders. Hold for 10-20 seconds and then switch sides.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985280/cwaphmgiwdichyxdvrus.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 3,
         "name": "bench",
         "image": "https://cdn0.iconfinder.com/data/icons/gym-fitness-machine-equipment-flat/128/gym-fitness-machine-equipment-flat-29-256.png"
       }
     ],
     "body_parts": [
       {
         "id": 9,
         "name": "shoulders",
         "image": "https://www.jefit.com/images/bodyparts2/shoulders.png"
       }
     ]
   },
   {
     "id": 22,
     "name": "assisted lying gluteus and piriformis stretch",
     "description": "<ul><li>Start in a push-up position on your hands and toes.</li><li>Slide your right knee forward toward your right hand. Angle your knee, so the outer ankle is touching the floor (see picture).</li><li>Slide your left leg back as far as comfortable.</li><li>Keep your hips squared to the floor.</li><li>You should feel a deep stretch in your right glutes (buttock), hip and outer thigh.</li><li>You can either stay up on your hands or fold forward and let your forearms rest on the floor in front of you or fully extend your arms in front of you.</li><li>Breathe slowly and deeply from your belly. Hold the stretch 30 seconds to 60 seconds and release. Repeat on the other leg.</li></ul><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985411/r3h6m7gptax59xb4likf.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 2,
         "name": "barbell",
         "image": "https://images.pexels.com/photos/949132/pexels-photo-949132.jpeg?auto=compress&cs=tinysrgb&w=600"
       }
     ],
     "body_parts": [
       {
         "id": 8,
         "name": "lower_legs",
         "image": "https://www.jefit.com/images/bodyparts2/lower_legs.png"
       }
     ]
   },
   {
     "id": 23,
     "name": "assisted lying leg raise with lateral throw down",
     "description": "<ol><li>Lie supine on the floor with your feet together; your partner should position one foot on either side of your head and stand upright with his knees slightly bent. Grasp your partner's ankles to stabilize your torso. This will be your starting position.</li><li>With a slight bend in your knees, do a reverse-crunch movement, raising your feet toward your partner while lifting your hips off the floor.</li><li>Your partner should grab your ankles and push your feet to one side or the other. Donâ€™t allow your feet to contact the floor to keep tension on the muscle.</li><li>Bring your legs back to the center and repeat to the opposite side.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985508/b9b4hstbicowhyjhgfds.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 5,
         "name": "exercise ball",
         "image": "https://cdn4.iconfinder.com/data/icons/sport-fitness-vol-4-outline-1/512/z4-gym_ball_fitness_exercise-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 9,
         "name": "shoulders",
         "image": "https://www.jefit.com/images/bodyparts2/shoulders.png"
       }
     ]
   },
   {
     "id": 24,
     "name": "assisted lying leg raise with throw down",
     "description": "<ol><li>Lie supine on the floor with your feet together; your partner should position one foot on either side of your head and stand upright with his knees slightly bent. Grasp your partner's ankles to stabilize your torso. This will be your starting position.</li><li>With a slight bend in your knees, do a reverse-crunch movement, raising your feet toward your partner while lifting your hips off the floor.</li><li>Your partner should grab your ankles and push your feet back toward the start position. Donâ€™t allow your feet to contact the floor and smoothly reverse the direction, repeating for reps.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985751/dfttnmq5w3sxyg4pvkux.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 7,
         "name": "kettlebell",
         "image": "https://cdn0.iconfinder.com/data/icons/sports-294/512/42-kettlebell-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 8,
         "name": "lower_legs",
         "image": "https://www.jefit.com/images/bodyparts2/lower_legs.png"
       }
     ]
   },
   {
     "id": 25,
     "name": "assisted motion russian twist",
     "description": "<ol><li>Start seated with knees bent and feet flat on the floor, holding one dumbbell with both hands in front of the chest.&nbsp;</li><li>Keeping the spine long and abdominals pulled in, lean slightly back and lift feet a few inches off the floor. If that is too difficult be sure to keep your feet down on the floor as a modification.&nbsp;</li><li>Slowly twist the torso to the left and bring the dumbbell beside the left hip.&nbsp;</li><li>Return to center, and then slowly twist to the right and bring the weight beside the right hip to complete one rotation. Continue to rotate from side to side using the obliques and not the low back.&nbsp;</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985837/drj6vdvkwskntah3urhx.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 1,
         "name": "bands",
         "image": "https://cdn0.iconfinder.com/data/icons/gym-set-1/32/Powerbands_Resistance_Bands_gym_sport_fitness-256.png"
       }
     ],
     "body_parts": [
       {
         "id": 6,
         "name": "forearms",
         "image": "https://www.jefit.com/images/bodyparts2/forearms.png"
       }
     ]
   },
   {
     "id": 26,
     "name": "assisted parallel close grip pull-up",
     "description": "<ol><li>Grabbing the parallel pull-up bar, start by hanging freely with your arms extended. This will be your starting position.</li><li>Keep your head up, core tight, breath outward and pull yourself upwards by flexing the elbows and make sure to keep your elbows from flailing outward</li><li>Bring your chin to at least the height of the bar, pause for a second, inhale, then lower back to the starting position.</li><li>Repeat as many as you can while maintaining good form and aim for at least two to three sets to build strength and muscle to your lats, biceps, forearms, and traps.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690985943/hicxi6dnwvbvggisyzsv.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 8,
         "name": "pullbar",
         "image": "https://cdn3.iconfinder.com/data/icons/exercising-1/64/exercising_pull_up-body_weight-pull_up_bar-exercise-sport-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 4,
         "name": "cardio",
         "image": "https://www.jefit.com/images/bodyparts2/cardio.png"
       }
     ]
   },
   {
     "id": 27,
     "name": "assisted prone hamstring",
     "description": "<p>Lie face down on the lying leg curls machine, stretching your legs out fully. The roller pad should rest just above the heels, a few inches over your calves. Grasp the support handles on each side of the machine.</p><p><br></p><ol><li>Exhale and flex your knees, pulling&nbsp;your ankles as close to your buttocks as possible. Keep your hips firmly on the bench.</li><li>Hold briefly.</li><li>Inhale as you return your feet to the starting position in a slow and controlled movement.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690986027/tvldfchngorh7q3xrw5v.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 3,
         "name": "bench",
         "image": "https://cdn0.iconfinder.com/data/icons/gym-fitness-machine-equipment-flat/128/gym-fitness-machine-equipment-flat-29-256.png"
       }
     ],
     "body_parts": [
       {
         "id": 3,
         "name": "biceps",
         "image": "https://www.jefit.com/images/bodyparts2/biceps.png"
       }
     ]
   },
   {
     "id": 28,
     "name": "assisted prone lying quads stretch",
     "description": "<ol><li>While standing, hold onto a countertop or chair back to assist in balance.</li><li>Bend your knee by grasping your ankle with one hand, moving your foot toward your buttocks.</li><li>Gently pull on your ankle to bend your knee as far as possible.</li><li>Maintain position for 30 seconds.</li><li>Return to standing position.</li><li>Repeat exercise 3 to 5 times with each leg.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690986105/tqnvnjuytvy6de8wfs3s.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 8,
         "name": "pullbar",
         "image": "https://cdn3.iconfinder.com/data/icons/exercising-1/64/exercising_pull_up-body_weight-pull_up_bar-exercise-sport-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 3,
         "name": "biceps",
         "image": "https://www.jefit.com/images/bodyparts2/biceps.png"
       }
     ]
   },
   {
     "id": 29,
     "name": "assisted prone rectus femoris stretch",
     "description": "<ol><li><span style=\"background-color: rgb(255, 255, 255); color: rgb(85, 85, 85);\">Stand opposite of your partner with your feet shoulder-width apart. </span></li><li><span style=\"background-color: rgb(255, 255, 255); color: rgb(85, 85, 85);\">Have your partner grab your foot and hold it up towards your buttocks. </span></li><li><span style=\"background-color: rgb(255, 255, 255); color: rgb(85, 85, 85);\"><span class=\"ql-cursor\">﻿</span>Ask your partner to hold this stretch for about 30 seconds before switching sides.</span></li></ol>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690986246/zc8lbashs4furo36iitm.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 5,
         "name": "exercise ball",
         "image": "https://cdn4.iconfinder.com/data/icons/sport-fitness-vol-4-outline-1/512/z4-gym_ball_fitness_exercise-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 4,
         "name": "cardio",
         "image": "https://www.jefit.com/images/bodyparts2/cardio.png"
       }
     ]
   },
   {
     "id": 30,
     "name": "assisted pull-up",
     "description": "<ol><li>With the bar in front of your nose, grab the bar slightly wider than shoulder-width apart with your palms facing away from you and place your knees on the pad.</li><li>Inhale and lower yourself down by allowing your arms to extend.</li><li>Continue lowering yourself until your arms are fully extended.</li><li>Exhale and pull on the bar to raise yourself up, returning to the starting position.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690986320/e72sotn7wv4gfdggw89h.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 3,
         "name": "bench",
         "image": "https://cdn0.iconfinder.com/data/icons/gym-fitness-machine-equipment-flat/128/gym-fitness-machine-equipment-flat-29-256.png"
       }
     ],
     "body_parts": [
       {
         "id": 8,
         "name": "lower_legs",
         "image": "https://www.jefit.com/images/bodyparts2/lower_legs.png"
       }
     ]
   },
   {
     "id": 31,
     "name": "assisted pull-up",
     "description": "<ol><li>Get on your hands and knees next to an exercise ball.</li><li>Place your elbows on top of the ball, keeping your arm out to your side. This will be your starting position.</li><li>Lower your torso towards the floor, keeping your elbow on top of the ball. Hold the stretch for 20-30 seconds, and repeat with the other arm.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1690986377/hsln3y8zco4t2d1kmqsk.gif",
     "intensity_type": "Reps",
     "equipments": [
       {
         "id": 6,
         "name": "foam roll",
         "image": "https://cdn3.iconfinder.com/data/icons/pilates-9/504/mat-yoga-pilates-foam-roll-512.png"
       }
     ],
     "body_parts": [
       {
         "id": 7,
         "name": "glutes",
         "image": "https://www.jefit.com/images/bodyparts2/glutes.png"
       }
     ]
   },
   {
     "id": 32,
     "name": "band hip lift",
     "description": "<ol><li>After choosing a suitable band, lay down in the middle of the rack, after securing the band on either side of you. If your rack doesn't have pegs, the band can be secured using heavy dumbbells or similar objects, just ensure they won't move.</li><li>Adjust your position so that the band is directly over your hips. Bend your knees and place your feet flat on the floor. Your hands can be on the floor or holding the band in position.</li><li>Keeping your shoulders on the ground, drive through your heels to raise your hips, pushing into the band as high as you can.</li><li>Pause at the top of the motion, and return to the starting position.</li></ol><p><br></p>",
     "image": "http://res.cloudinary.com/dyzqsffhe/image/upload/v1691043963/okm7ve7wk6a6ilu6gk3k.gif",
     "intensity_type": "Reps"
   }
 ]

 # puts "Seeding exercises..."
 #
 # exercises.each do |exercise|
 #   Exercise.create!(name:exercise[:name], description: exercise[:description], image: exercise[:image], intensity_type: exercise[:intensity_type])
 # end
 #
 # puts "Done seeding"

 exercise_ids = [29]
 body_part_ids = [10]
 equipment_ids = [9]

 # 29.times do |t|
 #   ExerciseEquipment.create!(exercise_id: t+1, equipment_id: rand(1..9))
 #   ExerciseBodyPart.create!(exercise_id: t+1, body_part_id: rand(1..10))
 # end
