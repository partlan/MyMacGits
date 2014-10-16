import requests
import BeautifulSoup

domain = raw_input("Enter a domain: ")


r = requests.get('https://domaintyper.com/top-websites/most-popular-websites-with-'+domain+'-domain')
soup = BeautifulSoup.BeautifulSoup(r.text)
tops = soup.html.body.findAll('tr')
counter = 0
for i in tops:
    counter+=1
    rankings = str(i.text)
    result = rankings.replace(domain,domain+" ")
    print(result)
    if counter>10:
        break
        