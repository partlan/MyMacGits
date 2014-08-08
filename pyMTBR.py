from bs4 import BeautifulSoup 
import requests
import webbrowser
new = 2
r = requests.get('http://forums.mtbr.com/california-norcal/')
soup = BeautifulSoup(r.text)
thread = soup.html.body.findAll('a',{'class':'title'})
link = soup.html.body.findAll('a',{'class':'title'},href=True)
j = 0
linkval = list()
for i in link:
	linkval.append((i['href']))
	j+=1
	if j == 10:
		break

k = 0
for i in thread:
	number = str(k+1)
	colon = ": "
	print(number + colon + i.text)
	k+=1
	if k == 10:
		break

print ""
userinput = input(str("Enter a Number for the item above: "))
choice = int(userinput)
webbrowser.open(linkval[choice-1],new=new)
