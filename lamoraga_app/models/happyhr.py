from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Happyhr(object):
    def __init__(self, data):
        self.name = data['name']
        self.ingredients = data['ingredients']
        self.price = data['price']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']


    # Save the new Happy Hour item
    def new_happyhr(data):
        query = "INSERT INTO happyhr (name, ingredients, price) VALUES (%(name)s, %(ingredients)s, %(price)s);"
        return connectToMySQL(db).query_db(query, data)

    # Get all Happy Hour items
    def get_all():
        query = "SELECT * FROM happyhr;"
        return connectToMySQL(db).query_db(query)

    # Get all Sea Happy Hour Items
    def get_sea():
        query = "SELECT * FROM happyhr WHERE type = 'Sea';"
        return connectToMySQL(db).query_db(query)

    # Get all Land Happy Hour Items
    def get_land():
        query = "SELECT * FROM happyhr WHERE type = 'Land';"
        return connectToMySQL(db).query_db(query)

    # Get all Side Happy Hour Items
    def get_side():
        query = "SELECT * FROM happyhr WHERE type = 'Side';"
        return connectToMySQL(db).query_db(query)