import bs4
import requests

make = raw_input("Enter the make: ")
carmodel = raw_input("Enter the model: ")
cityname = raw_input("Enter your city: ")
state = raw_input("Enter your state: ")
zipcode = raw_input("Enter your zip code: ")

city = cityname.replace(' ','+')

r = requests.get("http://www.autotrader.com/cars-for-sale/New+Cars/"+make+"/"+carmodel+"/"+city+"+"+state+"-"+zipcode+"?endYear=2015&listingType=new&listingTypes=new&searchRadius=100")
soup = bs4.BeautifulSoup(r.text)
location = soup.html.body.findAll('ul',{'class':'price-range-list'})
for i in location:
    print(i.text)
