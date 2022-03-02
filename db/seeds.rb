# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Clean the DB
User.destroy_all
Plant.destroy_all
Task.destroy_all

User.create!(email: "test@test.com", password: "123456")
User.create!(email: "test1@test.com", password: "123456")

# plant1
plant = Plant.new(
  species: "Sansevieria trifasciata",
  name: "Snake Plant",
  description: "Dracaena trifasciata is the most common type of sansevierias in indoor floriculture."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "water",
  description: "Dracaena trifasciata is succulent that stores moisture in its fleshy leaves"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!

# plant2
plant = Plant.new(
  species: "Epipremnum aureum",
  name: "Golden Pothos",
  description: "Epipremnum is an evergreen perennial herbaceous liana."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/91_gUFxQ6sL._AC_SL1500__nw79ic.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "Soil",
  description: "It is advisable to use a ready-made universal potting mix."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!

# plant3
plant = Plant.new(
  species: "Aloe vera",
  name: "Aloe Vera",
  description: "The succulent herbaceous perennial plant aloe is native to Africa, namely its arid areas."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81rMzcWGEDL._AC_SL1500__mld70o.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "Fertilizer",
  description: "Mineral fertilizers are used to feed the plants once every four weeks, from the second half of spring to the first weeks of fall."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!

# plant4
plant = Plant.new(
  species: "Ficus lyrata",
  name: "Fiddle Leaf Fig",
  description: "Ficus lyrata is a perennial tree plant of the mulberry family that grows in West Africa."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81d-49hV6vL._AC_SL1500__cz5iyr.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "Propagation",
  description: "Ficus cuttings are propagated in the spring or early summer."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!

# plant5
plant = Plant.new(
  species: "Spathiphyllum floribundum",
  name: "Peace Lily",
  description: "Peace lilies are among the most popular houseplants with their graceful yet minimalistic white flowers."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/61VE4mjT7gL._AC_SL1005__pyvyte.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "Temperature",
  description: "In the spring and summer, the temperature should be at least 65°F (18°C), and it is preferable to keep it around 72°F (22°C)."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!

# plant6
plant = Plant.new(
  species: "Monstera deliciosa",
  name: "Swiss Cheese Plant",
  description: "Lush and bold, Swiss Cheese Plant makes a good accent if you have the space."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81_3WonVCrL._AC_SL1500__qz6zfa.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

# user_plant = UserPlant.new(
#   user_id: User.first.id,
#   plant_id: plant.id
# )
# user_plant.save!

task = Task.new(
  name: "Sunlight",
  description: "They prefer a filtered morning sun and afternoon shade."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# user_task = UserTask.new(
#   user_plant_id: user_plant.id,
#   task_id: task.id
# )
# user_task.save!
