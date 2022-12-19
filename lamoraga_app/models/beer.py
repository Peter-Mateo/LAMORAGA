from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Beer(object):
    def __init__(self, data):
        self.name = data['name']
        self.price = data['price']
        self.region = data['region']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves the Beer to the database
    def new_beer(data):
        query = "INSERT INTO beer (name, price, region) VALUES (%(name)s, %(price)s, %(region)s);"
        return connectToMySQL(db).query_db(query, data)

    def get_beer():
        query = "SELECT * FROM beer"
        return connectToMySQL(db).query_db(query)