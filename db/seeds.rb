# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
require 'nokogiri'

# Clean the DB
User.destroy_all
Plant.destroy_all
Task.destroy_all

User.create!(email: "test@test.com", password: "123456")
User.create!(email: "test1@test.com", password: "123456")

# First Part
def plant_url
  counter = 1
  20.times do
    counter += 1
    begin
      puts url = "https://myplantin.com/plant/#{counter}"
      scrape_plant(url)
    rescue
      next
    end
  end
end

# 2nd Part
def scrape_plant(url)
  # TODO: Fetch the infos for the movie at the URL passed as an argument
  # Get the html file
  html_file = URI.open(url).read

  # Turn it into a Nokogiri HTML doc
  html_doc = Nokogiri::HTML(html_file)

  # Search the doc to get the title
  title = html_doc.search('h1').text.strip

  # Search the doc to get the title
  species = html_doc.search('h2').text.strip

  # Search the doc to get the title
  description = html_doc.search('.plant-description_plantDescription__paragraph__FoFfa').text.strip

  # Search the doc to get the title
  lightening = html_doc.search('.plant-description_climate__value__hQAg4')[0].text.strip

  # Search the doc to get the title
  temperature = html_doc.search('.plant-description_climate__value__hQAg4')[1].text.strip

  # Search the doc to get the title
  humidity = html_doc.search('.plant-description_climate__value__hQAg4')[2].text.strip

  # Search the doc to get the title
  photo = html_doc.search('.plant-description_plantImages__photo__IxlTC')[1].attribute("src").value
  photo_url = "https://myplantin.com#{photo}"

  plant = Plant.new(name: title, species: species, description: description, light: lightening, humidity: humidity, temperature: temperature)

  file = URI.open(photo_url)
  plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
  plant.save!
end

plant_url

# # plant1
# plant = Plant.new(
#   species: "Bonsaï",
#   name: "Bonsaï",
#   description: "Bonsai are trees and plants grown in containers in such a way so that they look their most beautiful"
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334648/plant%20sample/bonsai_liejqj.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Water requirements 1",
  description: "Add 200ml of water"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!

# # plant2
# plant = Plant.new(
#   species: "Indoor Bamboo",
#   name: "Bamboo",
#   description: "Bamboos are distributed in tropical and subtropical to mild temperate regions"
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/bamboo_rli2ny.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Water requirements 2",
  description: "Add 300ml of water"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!

# # plant3
# plant = Plant.new(
#   species: "Helianthus annuus",
#   name: "Sunflower",
#   description: "The common sunflower, is a large annual forb of the genus Helianthus grown as a crop for its edible oil and edible fruits."
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/sunflower_nv2wtl.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Water requirements 3",
  description: "Add 300ml of water"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!

# # plant4
# plant = Plant.new(
#   species: "Aloe Barbadensis",
#   name: "Aloevera",
#   description: "Aloe vera, sometimes described as a wonder plant is a short-stemmed shrub"
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/aloevera_uebna5.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Fertilizer 1",
  description: "Add one cup of fertilizer"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!

# # plant5
# plant = Plant.new(
#   species: "Droseraceae",
#   name: "Venus flytrap",
#   description: "The Venus flytrap is a carnivorous plant native to subtropical wetlands on the East Coast of the United States"
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646334612/plant%20sample/Dionaea_hzl8hl.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Fertilizer 2",
  description: "Add two cups of fertilizer"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!

# # plant6
# plant = Plant.new(
#   species: "Cactaceae",
#   name: "Cactus",
#   description: "A cactus is a kind of a plant adapted to hot, dry climates."
# )

# file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646335397/plant%20sample/cactus_e9prie.jpg')
# plant.photos.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
# plant.save!

# # user_plant = UserPlant.new(
# #   user_id: User.first.id,
# #   plant_id: plant.id
# # )
# # user_plant.save!

task = Task.new(
  name: "Fertilizer 3",
  description: "Add three cups of fertilizer"
)

file = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1646164792/plant%20sample/23458811_ug22ls.jpg')
task.photo.attach(io: file, filename: 'test1_upload.png', content_type: 'image/png')
task.save!

# # user_task = UserTask.new(
# #   user_plant_id: user_plant.id,
# #   task_id: task.id
# # )
# # user_task.save!
puts "All done! 2 users 6 tasks and 10 plants created"
