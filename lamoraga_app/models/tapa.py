from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Tapa(object):
    def __init__(self, data):
        self.name = data['name']
        self.description = data['description']
        self.price = data['price']
        self.category = data['category']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves the New Appetizers
    def new_app(data):
        query = "INSERT INTO events (name, description, price, category) VALUES (%(name)s, %(description)s, %(price)s, %(category)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets all the Appetizers
    def get_app():
        query = "SELECT * FROM tapas"
        return connectToMySQL(db).query_db(query)

    # Gets all the Sea menu items
    def Sea_app():
        query = "SELECT * FROM tapas WHERE category = 'Sea'"
        return connectToMySQL(db).query_db(query)

    # Gets all Land Menu Items
    def Land_app():
        query = "SELECT * FROM tapas WHERE category = 'Land'"
        return connectToMySQL(db).query_db(query)

    # Gets all Pinchos Menu Items
    def Pinchos_app():
        query = "SELECT * FROM tapas WHERE category = 'pinchos'"
        return connectToMySQL(db).query_db(query)

    # Gets all Soups Menu Items
    def Soups_app():
        query = "SELECT * FROM tapas WHERE category = 'Soups'"
        return connectToMySQL(db).query_db(query)

    # Gets all Salads Menu Items
    def Salads_app():
        query = "SELECT * FROM tapas WHERE category = 'Salads'"
        return connectToMySQL(db).query_db(query)

    # Gets all Happyhr Menu Items
    def Happyhr_app():
        query = "SELECT * FROM tapas WHERE category = 'happyhr'"
        return connectToMySQL(db).query_db(query)