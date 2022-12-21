import os

from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Blog(object):
    def __init__(self, data):
        self.title = data['title']
        self.date = data['date']
        self.content = data['content']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves the Blog Post data
    def save_post(title, content, cover):
        with open("lamoraga_app/static/blob_imgs/" + cover.filename, "wb") as f:
            f.write(cover.read())
        print("The File has been processed")
        data = {
            "title": title,
            "content": content,
            "cover": cover.read(),
        }
        query = "INSERT INTO blog (title, content, cover) VALUES (%(title)s, %(content)s, %(cover)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets the list of the imgs
    def get_blog_imgs():
        print(os.listdir("lamoraga_app/static/blob_imgs"))
        return os.listdir("lamoraga_app/static/blob_imgs")

    # Gets the Blog Post data
    def get_all_posts():
        query = "SELECT * FROM blog"
        return connectToMySQL(db).query_db(query)