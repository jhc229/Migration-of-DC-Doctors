import urllib

from bs4 import BeautifulSoup


def make_soup(url):
    thepage = urllib.urlopen(url)
    soupdata = BeautifulSoup(thepage, "html.parser")
    return soupdata

physiciansData= ""
soup = make_soup("file:///C:/Users/sXw2J/OneDrive/capstone/SearchResults.html")
for record in soup.findAll('tr'):
    for data in record.findAll('td'):
        print(data.text)
    print(physiciansData)
