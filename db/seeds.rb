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
  species: "Bonsaï",
  name: "Bonsaï",
  description: "Bonsai are trees and plants grown in containers in such a way so that they look their most beautiful"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334648/plant%20sample/bonsai_liejqj.jpg')
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
  species: "Indoor Bamboo",
  name: "Bamboo",
  description: "Bamboos are distributed in tropical and subtropical to mild temperate regions"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/bamboo_rli2ny.jpg')
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
  species: "Helianthus annuus",
  name: "Sunflower",
  description: "The common sunflower, is a large annual forb of the genus Helianthus grown as a crop for its edible oil and edible fruits."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/sunflower_nv2wtl.jpg')
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
  species: "Aloe Barbadensis",
  name: "Aloevera",
  description: "Aloe vera, sometimes described as a wonder plant is a short-stemmed shrub"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/aloevera_uebna5.jpg')
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
  species: "Droseraceae",
  name: "Venus flytrap",
  description: "The Venus flytrap is a carnivorous plant native to subtropical wetlands on the East Coast of the United States"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/Dionaea_hzl8hl.jpg')
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
  species: "Cactaceae",
  name: "Cactus",
  description: "A cactus is a kind of a plant adapted to hot, dry climates."
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646335397/plant%20sample/cactus_e9prie.jpg')
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
puts "All done! 2 users 6 tasks ans 6 plants created"
