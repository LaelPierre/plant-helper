require 'open-uri'
require 'nokogiri'


def fetch_plant_urls
  # TODO: Fetch the urls to the movies at this address:
  url = "https://myplantin.com/plant-list"

  # Get the html file
  html_file = URI.open(url).read

  # Turn it into a Nokogiri HTML doc
  html_doc = Nokogiri::HTML(html_file)

  # Search the `doc` with the appropriate
  # CSS selector and / or HTML tag
  selector = ".plant-card_plantCard__94_qo"

  pp html_doc.search(".plant-card_plantCard__94_qo")

  # Iterate over the results to extract only the link values
  links = html_doc.search(selector).first(5).map do |element|
    endpoint = element.attribute('href').value
    pp element
    "https://myplantin.com/plant/#{endpoint}"
  end

  # Return the Array, but only for the first 5 elements
  return links
end

# Calling the method
pp fetch_plant_urls()


# 2nd Part

def scrape_plant(url)
  # TODO: Fetch the infos for the movie at the URL passed as an argument
  # Get the html file
  html_file = URI.open(url).read

  # Turn it into a Nokogiri HTML doc
  html_doc = Nokogiri::HTML(html_file)

  # Search the doc to get the title
  puts title = html_doc.search('h1').text.strip

  # Search the doc to get the title
  puts species = html_doc.search('h2').text.strip

  # Search the doc to get the title
  puts description = html_doc.search('.plant-description_plantDescription__paragraph__FoFfa').text.strip

  # Search the doc to get the title
  pp lightenibg = html_doc.search('.plant-description_climate__value__hQAg4')[0].text.strip

  # Search the doc to get the title
  pp temperature = html_doc.search('.plant-description_climate__value__hQAg4')[1].text.strip

  # Search the doc to get the title
  pp humidity = html_doc.search('.plant-description_climate__value__hQAg4')[2].text.strip

  # Search the doc to get the title
  photo = html_doc.search('.plant-description_plantImages__photo__IxlTC')[1].attribute("src").value
  pp photo_url = "https://myplantin.com#{photo}"
end

scrape_plant("https://myplantin.com/plant/8")

# # {
# #     cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
# #     director: "Christopher Nolan",
# #     storyline: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
# #     title: "The Dark Knight",
# #     year: 2008
# #   }

# # Calling the method (should return The Dark Knight Infos)
# scrape_movie('https://www.imdb.com/title/tt0468569/')
