from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Dinner(object):
    def __init__(self, data):
        self.name = data['name']
        self.description = data['description']
        self.price = data['price']
        self.category = data['category']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves new Menu Item
    def new_dinner(self, data):
        query = "INSERT INTO beer (name, description, price, category) VALUES (%(name)s, %(description)s, %(price)s, %(category)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets All Menu Items
    def get_all_dinner():
        query = "SELECT * FROM dinner"
        return connectToMySQL(db).query_db(query)

    # Gets all the Sea menu items
    def Sea_dinner():
        query = "SELECT * FROM dinner WHERE category = 'Sea'"
        return connectToMySQL(db).query_db(query)

    # Gets all Land Menu Items
    def Land_dinner():
        query = "SELECT * FROM dinner WHERE category = 'Land'"
        return connectToMySQL(db).query_db(query)

    # Gets all Vegan Menu Items
    def Vegan_dinner():
        query = "SELECT * FROM dinner WHERE category = 'Vegan'"
        return connectToMySQL(db).query_db(query)

    # Gets all Sides Menu Items
    def Sides_dinner():
        query = "SELECT * FROM dinner WHERE category = 'Sides'"
        return connectToMySQL(db).query_db(query)

    # Gets all Dessert Menu Items
    def Dessert_dinner():
        query = "SELECT * FROM dinner WHERE category = 'Dessert'"
        return connectToMySQL(db).query_db(query)