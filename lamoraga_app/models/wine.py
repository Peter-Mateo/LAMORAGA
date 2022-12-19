from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Wine(object):
    def __init__(self, data):
        self.name = data['name']
        self.region = data['region']
        self.price = data['price']
        self.grape = data['grape']
        self.bottle_btg = data['bottle_btg']
        self.type = data['type']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Save the new Wine BTG
    def new_wine(data):
        query = "INSERT INTO wine (name, region, price, grape, bottle_btg, type) VALUES (%(name)s, %(region)s, %(price)s, %(grape)s, %(bottle_btg)s, %(type)s);"
        return connectToMySQL(db).query_db(query, data)

    #Grabs the Sangria data
    def get_sangria():
        query = """
        SELECT wine.name, region, price, grape, type, btl_price
        FROM wine
        LEFT JOIN wine_bttle
        on wine.name = wine_bttle.name
        WHERE wine.name = 'SANGRIA';
        """
        return connectToMySQL(db).query_db(query)

    #Grabs the Sparkling data
    def get_sparkling():
        query = """
        SELECT wine.name, region, price, grape, type, btl_price
        FROM wine
        LEFT JOIN wine_bttle
        on wine.name = wine_bttle.name
        WHERE wine.type = 'Sparkling';
        """
        return connectToMySQL(db).query_db(query)

    #Grabs the White data
    def get_white():
        query = """
        SELECT wine.name, region, price, grape, type, btl_price
        FROM wine
        LEFT JOIN wine_bttle
        on wine.name = wine_bttle.name
        WHERE wine.type = 'white';
        """
        return connectToMySQL(db).query_db(query)

    #Grabs the Rose data
    def get_rose():
        query = """
        SELECT wine.name, region, price, grape, type, btl_price
        FROM wine
        LEFT JOIN wine_bttle
        on wine.name = wine_bttle.name
        WHERE wine.type = 'Rosé';
        """
        return connectToMySQL(db).query_db(query)

    #Grabs the Red data
    def get_red():
        query = """
        SELECT wine.name, region, price, grape, type, btl_price
        FROM wine
        LEFT JOIN wine_bttle
        on wine.name = wine_bttle.name
        WHERE wine.type = 'red';
        """
        return connectToMySQL(db).query_db(query)

    #Grabs the Sparkling Bottle data
    def get_sparkling_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Sparkling';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Light & Crisp Bottle data
    def get_light_crisp_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Light&Crisp';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Fun & Interesting Bottle data
    def get_fun_interesting_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Fun&Interesting';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Full & Bold Bottle data
    def get_full_bold_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Full&Bold';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Spanish Red Bottle data
    def get_spanish_red_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'SpanishRed';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Light Bodied Bottle data
    def get_light_bodied_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Light Bodied';"
        return connectToMySQL(db).query_db(query)

    #Grabs the MediumBodied Bottle data
    def get_medium_bodied_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Medium Bodied';"
        return connectToMySQL(db).query_db(query)

    #Grabs the Full Bodied Bottle data
    def get_full_bodied_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'Full Bodied';"
        return connectToMySQL(db).query_db(query)

    #Grabs the End Of Bin Bottle data
    def get_end_of_bin_bottle():
        query = "SELECT * FROM wine_bottle WHERE category = 'End Of Bin';"
        return connectToMySQL(db).query_db(query)