import urllib
import json
from flask import Flask
from flask import render_template

app = Flask(__name__)

# this is the api key
apiKey = "https://newsapi.org/v2/top-headlines?country=us&apiKey=8e968903a7034e199d7fa5a223ccefd4"

# opens api key
urlobj = urllib.request.urlopen(apiKey)

# decodes data from opened api key
data = json.loads((urlobj.read()).decode("utf-8"))

# parses data to html
@app.route('/')
def parse():
    title = data.get('articles')[0].get('title')
    date = data.get('articles')[0].get('publishedAt')
    image = data.get('articles')[0].get('urlToImage')
    description = data.get('articles')[0].get('description')
    url = data.get('articles')[0].get('url')
    return render_template('main.html', title=title, date=date, image=image, description=description, url=url)


if __name__ == '__main__':
    app.run()
