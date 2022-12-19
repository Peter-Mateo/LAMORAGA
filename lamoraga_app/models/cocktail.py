from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Cocktail(object):
    def __init__(self, data):
        self.name = data['name']
        self.ingredients = data['ingredients']
        self.price = data['price']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves the New Cocktail
    def new_cocktail(data):
        query = "INSERT INTO cocktails (name, ingredients, price) VALUES (%(name)s, %(ingredients)s, %(price)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets all the Cocktails
    def get_all_cocktails():
        query = "SELECT * FROM cocktails"
        return connectToMySQL(db).query_db(query)