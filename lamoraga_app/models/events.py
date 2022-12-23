import datetime
import time

from lamoraga_app.config.mysqlconnection import connectToMySQL

db = 'lamoraga'

class Events(object):
    def __init__(self, data):
        self.name = data['name']
        self.date = data['date']
        self.description = data['description']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    # Saves New Event
    def new_event(data):
        query = "INSERT INTO events (name, date, description) VALUES (%(name)s, %(date)s, %(description)s);"
        return connectToMySQL(db).query_db(query, data)

    # Gets All Events
    def get_all_events():
        query = "SELECT name, date, date_format(date, '%M %e %a, %Y') FROM events ORDER BY date ASC;"
        return connectToMySQL(db).query_db(query)


    # Deletes old Events
    def delete_event():
        today = datetime.date.today() + datetime.timedelta(days=1)
        data = {
            'today': today
        }
        query = "DELETE FROM events WHERE date < %(today)s;"
        return connectToMySQL(db).query_db(query, data)