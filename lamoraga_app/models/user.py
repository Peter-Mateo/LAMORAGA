from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class User:
    # Checks the Admin
    def check_admin(check):
        query = "SELECT username, pswd FROM admin WHERE id = 1;"
        log = connectToMySQL(db).query_db(query)
        print(log[0])
        print(log[0]['username'])
        print(check)
        if log[0]['username'] == check["username"] and log[0]["pswd"] == check["pswd"]:
            return True
        else:
            return False
