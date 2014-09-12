import bs4
import requests
import webbrowser

make = raw_input("Enter the make: ")
model = raw_input("Enter the model: ")
cityname = raw_input("Enter your city: ")
state = raw_input("Enter your state: ")
zipcode = raw_input("Enter your zip code: ")

city = cityname.replace(' ','+')
carmodel = model.replace(' ','+')

url = "http://www.autotrader.com/cars-for-sale/New+Cars/"+make+"/"+carmodel+"/"+city+"+"+state+"-"+zipcode+"?endYear=2015&listingType=new&listingTypes=new&searchRadius=100"

r = requests.get(url)
soup = bs4.BeautifulSoup(r.text)
priceRange = soup.html.body.findAll('ul',{'class':'price-range-list'})
for i in priceRange:
    print(i.text)

site = raw_input("Would you like to go to the site? ")
lowersite = site.lower()
if lowersite == "yes" or lowersite == "y":
    webbrowser.open_new(url)
else:
    print "Goodbye"
