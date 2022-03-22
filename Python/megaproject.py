#import urllib.request
#page = urllib.request.urlopen('http://services.runescape.com/m=hiscore/ranking?table=0&category_type=0&time_filter=0&date=1519066080774&user=zezima')
#print(page.read())
import pandas
import numpy
import beautifulsoup
import time
import random
import urllib.request as ul
page = ul.urlopen("https://loterias.caixa.gov.br/Paginas/Mega-Sena.aspx")

print(page.read())