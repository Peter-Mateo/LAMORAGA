from flask import flash, redirect, render_template, url_for

from lamoraga_app import app


@app.route('/')
def index():
    return render_template('index.html')