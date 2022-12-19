import mysql.connector
import pymysql.cursors


class MySQLConnection:
    def __init__(self, db):
        connection = pymysql.connect(host = 'localhost',
                                    user = 'root', 
                                    password = 'root', 
                                    db = db,
                                    charset = 'utf8mb4',
                                    cursorclass = pymysql.cursors.DictCursor,
                                    autocommit = True)
        self.connection = connection
        
    def query_db(self, query, data=None):
        with self.connection.cursor() as cursor:
            try:
                query = cursor.mogrify(query, data)
                cursor.execute(query, data)
                if query.lower().find("insert") >= 0:
                    # INSERT queries will return the ID NUMBER of the row inserted
                    self.connection.commit()
                    return cursor.lastrowid
                elif query.lower().find("select") >= 0:
                    # SELECT queries will return the data from the database as a LIST OF DICTIONARIES
                    result = cursor.fetchall()
                    return result
                else:
                    # UPDATE and DELETE queries will return nothing
                    self.connection.commit()
            except Exception as e:
                # if the query fails the method will return FALSE
                print("Something went wrong", e)
                return False
            finally:
                # close the connection
                self.connection.close()

    def convertToBinaryData(self,filename):
        # Convert digital data to binary format
        with open(filename, 'rb') as file:
            binaryData = file.read()
        return binaryData

    def insertBLOB(self,title, content, cover):
        print("Inserting BLOB into blog table")
        try:
            connection = mysql.connector.connect(host='localhost',
                                                database='lamoraga',
                                                user='root',
                                                password='root')

            cursor = connection.cursor()
            sql_insert_blob_query = """ INSERT INTO blog
                            (title, content, cover) VALUES (%(title)s,%(content)s,%(cover)s)"""

            cover_photo = cover.read()

            # Convert data into tuple format
            insert_blob_tuple = {'title': title, 'content': content, 'cover': cover_photo}
            result = self.cursor.execute(sql_insert_blob_query, insert_blob_tuple)
            print(result)
            self.connection.commit()
            print("Image and data inserted successfully as a BLOB into blog table", result)

        except mysql.connector.Error as error:
            print("Failed inserting BLOB data into MySQL table {}".format(error))


# connectToMySQL receives the database we're using and uses it to create an instance of MySQLConnection
def connectToMySQL(db):
    return MySQLConnection(db)

