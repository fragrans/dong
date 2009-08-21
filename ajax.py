#!/usr/bin/python
import urllib
import simplejson
import re
import html2text

def query(q):
    query = urllib.urlencode({'q' : q})
    url = 'http://ajax.googleapis.com/ajax/services/search/web?v=1.0&%s' % (query)
    search_results = urllib.urlopen(url)
    json = simplejson.loads(search_results.read())
    results = json['responseData']['results']
    for i in results:
        print q + " " + i['url'] + " " + i['titleNoFormatting'] + ": " + html2text.html2text(i['content'])
        break

f=open("result.txt", "r");
for line in f:
    print line
    m = re.match(r".*/([^/]*)\n$", line)
    query(m.groups()[0])

