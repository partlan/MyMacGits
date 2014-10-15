import bs4
import requests
import webbrowser

phonenumber = raw_input("Enter the phone number: ")

phonenospace = phonenumber.replace(' ','')
phonenodash = phonenospace.replace('-','')
phonenoopen = phonenodash.replace('(','')
phone = phonenoopen.replace(')','')

print(phone + "\n")

url = "http://www.411.com/business/reverse_phone?phone_number="+phone

r = requests.get(url)
soup = bs4.BeautifulSoup(r.text)
priceRange = soup.html.body.findAll('p',{'class':'result_name'})
for i in priceRange:
    print(i.text)
