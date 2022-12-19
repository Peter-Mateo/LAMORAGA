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
        connectToMySQL(db).insertBLOB(title, content, cover)

    # Gets the Blog Post data
    def get_all_posts():
        query = "SELECT * FROM blog"
        return connectToMySQL(db).query_db(query)