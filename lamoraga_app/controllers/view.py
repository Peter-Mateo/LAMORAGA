from flask import flash, redirect, render_template, request, url_for

from lamoraga_app import app
from lamoraga_app.models.beer import Beer
from lamoraga_app.models.blog import Blog
from lamoraga_app.models.cocktail import Cocktail
from lamoraga_app.models.dinner import Dinner
from lamoraga_app.models.events import Events
from lamoraga_app.models.tapa import Tapa
from lamoraga_app.models.user import User
from lamoraga_app.models.wine import Wine


@app.route('/')
def index():
    return render_template('index.html', cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beer=Beer.get_beer(), event = Events.delete_event())


@app.route('/the-restaurant/history/')
def about():
    return render_template('about.html')


@app.route('/contact/')
def contact():
    return render_template('contact.html')


@app.route('/event-calendar/')
def events():
    print(Events.get_all_events())
    return render_template('events.html', events = Events.get_all_events())


@app.route('/the-restaurant/press-room/')
def blog():
    return render_template('blog.html', blog=Blog.get_all_posts())


@app.route('/menu')
def menu():
    return render_template('menu.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beer=Beer.get_beer())


@app.route('/lenvera-admin')
def admin():
    return render_template('admin.html')


@app.route('/lenvera-console')
def console():
    return render_template('control.html')


@app.route('/login', methods=['POST'])
def login():
    data = {
        'username': request.form.get('username'),
        'pswd': request.form.get('password')
    }
    print("this is the login", data)
    if User.check_admin(data) == False:
        return redirect('/')
    else:
        return redirect('/lenvera-console')


@app.route('/lenvera-admin/newpost/', methods=['POST'])
def save_post():
    title = request.form.get('title')
    content = request.form.get('content')
    cover = request.files['cover']
    Blog.save_post(title, content, cover)
    return redirect('/')
