from requests import get
from BeautifulSoup import BeautifulSoup
from time import strftime

quote = raw_input("Enter a stock symbol: ")
print("")

r = get('https://www.google.com/finance?q='+quote+'&ei=7IxrVOXoJoOhigKv9oCYCA')

if r.status_code == 200:
    soup = BeautifulSoup(r.text)
    result = soup.html.body.findAll("span",{"class":"pr"})
    for i in result:
        output = (i.text)
    
    print(output)
    print strftime("%Y-%m-%d %H:%M")

else:
    print("There are no stock symbols with that name.")