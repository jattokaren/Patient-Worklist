
>>> json.loads(joe)['results'][1]['vicinity'] 
'2001 South State Street, Suite S2-400, Salt Lake City' 

for item in data["Results"]:
    print item["Name"]

for item in json.loads(joe)['results']:
	print(item['vicinity'])

for item in (joe)['results']:
	print item['vicinity']

>>> for item in json.loads(joe)['results']:
...     print(item['vicinity'])
...
1165 Wilmington Ave, Salt Lake City
2001 South State Street, Suite S2-400, Salt Lake City
1165 East Wilmington., Commons Of Sugarhouse, Salt Lake City
50 N Medical Dr, Salt Lake City
660 S 200 E, Salt Lake City
1165 Wilmington Ave, Salt Lake City

>>> url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=37.7749,-122.4194&radius=5000&keyword=pharmacy+vaccination+services&key=AIzaSyBQtI3pjpZGRXjjDQMhLjq8xlx7nd1v950"
>>> res=urllib.request.urlopen(url)
>>> joe=res.read()
>>> json.loads(joe)['results'][1]['vicinity']
'790 Van Ness Ave, San Francisco'
>>> json.loads(joe)['results'][1]['name']
'Walgreens Pharmacy'
>>> for item in json.loads(joe)['results']:
...     print(item['name'])
...
Walgreens Pharmacy
Walgreens Pharmacy
Walgreens Pharmacy
Walgreens Pharmacy
Walgreens Pharmacy
Passport Health San Francisco Travel Clinic
Passport Health Downtown San Francisco Travel Clinic
Walgreens Photo
Walgreens Pharmacy
CVS Pharmacy
Walgreens
VIP Petcare Wellness Center
>>> for item in json.loads(joe)['results']:
...     print(item['vicinity'])
...
1979 Mission St, San Francisco
790 Van Ness Ave, San Francisco
1496 Market St, San Francisco
1301 Market St, San Francisco
498 Castro St, San Francisco
3117 Geary Blvd, San Francisco
47 Kearny St STE 701, San Francisco
498 Castro St, San Francisco
300 Gough St, San Francisco
1285A Sutter St, San Francisco
498 Castro St, San Francisco
1012, 1975 Market St, San Francisco


url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=37.7749,-122.4194&radius=5000&keyword=pharmacy+vaccination+services&key=AIzaSyBQtI3pjpZGRXjjDQMhLjq8xlx7nd1v950"
res=urllib.request.urlopen(url)
apiResults=res.read()

output = ''
for item in json.loads(apiResults)['results']:
	name = item['name']
	vicinity = item['vicinity']
	output = output + '| ' + name + '| ' + vicinity

print(output)

json.loads(joe)['results'][1]['vicinity']
json.loads(joe)['results'][1]['geometry'][0]['lat']

https://stackoverflow.com/questions/12344332/parsing-muilti-dimensional-json-array-to-python
secret
minutes
link
bookmark_collection
	free_link
		name1
		link1
		name2
		link2
	boarding_pass
	sublink
		name
		link



