import os

from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Blog(object):
    def __init__(self, data):
        self.title = data['title']
        self.date = data['date']
        self.intro = data['intro']
        self.par1heading = data['par1heading']
        self.par1 = data['par1']
        self.par2heading = data['par2heading']
        self.par2 = data['par2']
        self.par3heading = data['par3heading']
        self.par3 = data['par3']
        self.sumheading = data['sumheading']
        self.summary = data['summary']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves the Blog Post data
    def save_post(data, img):
        with open("lamoraga_app/static/blob_imgs/" + img.filename, "wb") as f:
            f.write(img.read())
        print("The File has been processed")
        query = "INSERT INTO blog (title, intro, cover, par1heading, par1, par2heading, par2, par3heading, par3, sumheading, summary) VALUES (%(title)s, %(intro)s, %(cover)s, %(par1heading)s, %(par1)s, %(par2heading)s, %(par2)s, %(par3heading)s, %(par3)s, %(sumheading)s, %(summary)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets the Blog Post data
    def get_all_posts():
        query = "SELECT * FROM blog"
        return connectToMySQL(db).query_db(query)

    # Grabs the specific Blog Post data
    def get_post(data):
        query = "SELECT * FROM blog WHERE id = %(id)s"
        return connectToMySQL(db).query_db(query, data)