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

# plant1
plant = Plant.new(
  species: Faker::Beer.unique.name,
  name: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
plant.save!

user_plant = UserPlant.new(
  user_id: User.first.id,
  plant_id: Plant.first.id
)
user_plant.save!

task = Task.new(
  name: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

user_task = UserTask.new(
  user_plant_id: UserPlant.first.id,
  task_id: Task.first.id
)
user_task.save!

# # plant2
# plant = Plant.new(
#   plant_id: User.first.id,
#   species: Faker::Beer.unique.name,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# task = Task.new(
#   task_id: User.first.id,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# task.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# task.save!

# # plant3
# plant = Plant.new(
#   plant_id: User.first.id,
#   species: Faker::Beer.unique.name,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/91_gUFxQ6sL._AC_SL1500__nw79ic.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# task = Task.new(
#   task_id: User.first.id,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# task.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# task.save!

# # plant4
# plant = Plant.new(
#   plant_id: User.first.id,
#   species: Faker::Beer.unique.name,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81d-49hV6vL._AC_SL1500__cz5iyr.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# task = Task.new(
#   task_id: User.first.id,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# task.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# task.save!

# # plant5
# plant = Plant.new(
#   plant_id: User.first.id,
#   species: Faker::Beer.unique.name,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81_3WonVCrL._AC_SL1500__qz6zfa.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# task = Task.new(
#   task_id: User.first.id,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# task.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# task.save!

# # plant6
# plant = Plant.new(
#   plant_id: User.first.id,
#   species: Faker::Beer.unique.name,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163161/plant%20sample/81d-49hV6vL._AC_SL1500__cz5iyr.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# task = Task.new(
#   task_id: User.first.id,
#   name: Faker::Beer.unique.name,
#   description: Faker::ChuckNorris.fact
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646163162/plant%20sample/81rMzcWGEDL._AC_SL1500__1_etxyic.jpg')
# task.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# task.save!
