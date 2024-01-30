from datetime import datetime

from flask import flash, redirect, render_template, request, url_for

from lamoraga_app import app
from lamoraga_app.models.beer import Beer
from lamoraga_app.models.blog import Blog
from lamoraga_app.models.cocktail import Cocktail
from lamoraga_app.models.dinner import Dinner
from lamoraga_app.models.events import Events
from lamoraga_app.models.happyhr import Happyhr
from lamoraga_app.models.tapa import Tapa
from lamoraga_app.models.user import User
from lamoraga_app.models.wine import Wine

""" Landing Page for Home Page """
@app.route('/')
def index():
    return render_template('index.html', cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beer=Beer.get_beer(), event = Events.delete_event(), posts = Blog.get_all_posts()[::-1])

@app.route('/the-restaurant/history/')
def about():
    return render_template('about.html')

@app.route('/contact/')
def contact():
    return render_template('contact.html')

@app.route('/event-calendar/')
def events():
    event = Events.get_all_events()
    if len(event) == 0 or event == {}:
        event = [{
            'name': 'No events',
            'date': datetime.now().strftime('%Y-%m-%d')
        }]
    return render_template('events.html', events = event)

""" *** Special Event Route *** """
@app.route('/special-events/')
def special_events():
    return render_template('special_events.html')

""" Blog Route *** """
@app.route('/the-restaurant/press-room/')
def blog():
    blog = Blog.get_all_posts()
    PageAssignedBlogs = []
    Page = 1
    PageIndex = 1
    for blogs in blog:
        if Page % 4 == 0:
            PageIndex += 1
        RefactoredBlog = {
            'id' : blogs['id'],
            'title' : blogs['title'],
            'intro' : blogs['intro'],
            'par1heading' : blogs['par1heading'],
            'par1' : blogs['par1'],
            'par2heading' : blogs['par2heading'],
            'par2' : blogs['par2'],
            'par3heading' : blogs['par3heading'],
            'par3' : blogs['par3'],
            'sumheading' : blogs['sumheading'],
            'summary' : blogs['summary'],
            'Page' : PageIndex
        }
        Page += 1
        PageAssignedBlogs.append(RefactoredBlog)
    print(PageAssignedBlogs)
    return render_template('blog.html', posts = blog[::-1], pages = PageIndex)

@app.route('/the-restaurant/press-room/<int:id>')
def blog_post(id):
    data = {
        'id': id
    }
    post = Blog.get_post(data)
    return render_template('blog_post.html', post = post, posts = Blog.get_all_posts()[::-1])

@app.route('/menus/')
def menu():
    return render_template('menu.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), sparklings=Wine.get_sparkling(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beers=Beer.get_beer(), rose_wine = Wine.get_rose(), sp_btl = Wine.get_sparkling_bottle(), lc_btl = Wine.get_light_crisp_bottle(), fn_btl = Wine.get_fun_interesting_bottle(), fbb_btl = Wine.get_full_bold_bottle(), spb_btl = Wine.get_spanish_red_bottle(), lb_btl = Wine.get_light_bodied_bottle(), mb_btl=Wine.get_medium_bodied_bottle(), fb_btl=Wine.get_full_bodied_bottle(), end_btl = Wine.get_end_of_bin_bottle(), hrS = Happyhr.get_sea(), hrL = Happyhr.get_land(), hrs = Happyhr.get_side() )

@app.route('/menus/<string:menu>')
def menu_type(menu):
    print(menu)
    if menu == 'bar':
        return render_template('menu_bar.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), sparklings=Wine.get_sparkling(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beers=Beer.get_beer(), rose_wine = Wine.get_rose(), sp_btl = Wine.get_sparkling_bottle(), lc_btl = Wine.get_light_crisp_bottle(), fn_btl = Wine.get_fun_interesting_bottle(), fbb_btl = Wine.get_full_bold_bottle(), spb_btl = Wine.get_spanish_red_bottle(), lb_btl = Wine.get_light_bodied_bottle(), mb_btl=Wine.get_medium_bodied_bottle(), fb_btl=Wine.get_full_bodied_bottle(), end_btl = Wine.get_end_of_bin_bottle(), hrS = Happyhr.get_sea(), hrL = Happyhr.get_land(), hrs = Happyhr.get_side())
    elif menu == 'dinner':
        return render_template('menu_dinner.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), sparklings=Wine.get_sparkling(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beers=Beer.get_beer(), rose_wine = Wine.get_rose(), sp_btl = Wine.get_sparkling_bottle(), lc_btl = Wine.get_light_crisp_bottle(), fn_btl = Wine.get_fun_interesting_bottle(), fbb_btl = Wine.get_full_bold_bottle(), spb_btl = Wine.get_spanish_red_bottle(), lb_btl = Wine.get_light_bodied_bottle(), mb_btl=Wine.get_medium_bodied_bottle(), fb_btl=Wine.get_full_bodied_bottle(), end_btl = Wine.get_end_of_bin_bottle(), hrS = Happyhr.get_sea(), hrL = Happyhr.get_land(), hrs = Happyhr.get_side())
    elif menu == 'vegan':
        return render_template('menu_vegan.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), sparklings=Wine.get_sparkling(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beers=Beer.get_beer(), rose_wine = Wine.get_rose(), sp_btl = Wine.get_sparkling_bottle(), lc_btl = Wine.get_light_crisp_bottle(), fn_btl = Wine.get_fun_interesting_bottle(), fbb_btl = Wine.get_full_bold_bottle(), spb_btl = Wine.get_spanish_red_bottle(), lb_btl = Wine.get_light_bodied_bottle(), mb_btl=Wine.get_medium_bodied_bottle(), fb_btl=Wine.get_full_bodied_bottle(), end_btl = Wine.get_end_of_bin_bottle(), hrS = Happyhr.get_sea(), hrL = Happyhr.get_land(), hrs = Happyhr.get_side())
    elif menu == 'cocktails':
        return render_template('menu_cocktails.html', sea=Tapa.Sea_app(), land=Tapa.Land_app(), pinchos=Tapa.Pinchos_app(), soups=Tapa.Soups_app(), salads=Tapa.Salads_app(), happyhr=Tapa.Happyhr_app(), sea_dinner=Dinner.Sea_dinner(), land_dinner=Dinner.Land_dinner(), vegan_dinner=Dinner.Vegan_dinner(), sides=Dinner.Sides_dinner(), dessert=Dinner.Dessert_dinner(), cocktails=Cocktail.get_all_cocktails(), sangria=Wine.get_sangria(), sparklings=Wine.get_sparkling(), white_wine=Wine.get_white(), red_wine=Wine.get_red(), beers=Beer.get_beer(), rose_wine = Wine.get_rose(), sp_btl = Wine.get_sparkling_bottle(), lc_btl = Wine.get_light_crisp_bottle(), fn_btl = Wine.get_fun_interesting_bottle(), fbb_btl = Wine.get_full_bold_bottle(), spb_btl = Wine.get_spanish_red_bottle(), lb_btl = Wine.get_light_bodied_bottle(), mb_btl=Wine.get_medium_bodied_bottle(), fb_btl=Wine.get_full_bodied_bottle(), end_btl = Wine.get_end_of_bin_bottle(), hrS = Happyhr.get_sea(), hrL = Happyhr.get_land(), hrs = Happyhr.get_side())
    else:
        return redirect(url_for('menu'))

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
    if User.check_admin(data) == False:
        return redirect('/')
    else:
        return redirect(url_for('console'))

@app.route('/lenvera-admin/newpost/', methods=['POST'])
def save_post():
    img = request.files['cover']
    data = {
        'cover': request.files['cover'].filename,
        'title': request.form.get('title'),
        'intro': request.form.get('intro'),
        'par1heading': request.form.get('par1heading'),
        'par1': request.form.get('par1'),
        'par2heading': request.form.get('par2heading'),
        'par2': request.form.get('par2'),
        'par3heading': request.form.get('par3heading'),
        'par3': request.form.get('par3'),
        'sumheading': request.form.get('sumheading'),
        'summary': request.form.get('summary')
    }
    if not Blog.validate_post(data, img):
        return redirect(url_for('console'))
    Blog.save_post(data, img)
    return redirect(url_for('console'))

# Date Filter
@app.template_filter()
def format_datetime(value):
    format = "%b %d, %Y"
    return value.strftime(format)