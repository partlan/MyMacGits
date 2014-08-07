from bs4 import BeautifulSoup
import requests
r = requests.get('http://www.wrc.com/en/wrc/calendar/calendar/page/671-206-16--.html')
soup = BeautifulSoup(r.text)
events = soup.html.body.findAll('td')
for i in events:
	names = i.text
	if names == 'Final Results':
		print""
	elif names == "Next Rally":
		print("\nNext Rally \n")
	else:
		print(names)	
	
