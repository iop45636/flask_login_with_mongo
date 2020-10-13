from flask import Flask
from app import app
from user.models import User

@app.route('/user/signup', methods=["POST"])
def sigup():
    user = User()
    return user.signup()

@app.route('/user/signout')
def signout():
    user = User()
    return user.signout()

@app.route('/user/login', methods=["POST"])
def login():
    user = User()
    return user.login()