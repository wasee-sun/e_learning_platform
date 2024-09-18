from django.urls import path, include
from . import views

urlpatterns = [
    path("", views.home, name="home-codextra"),
    path("contact-us/", views.contact, name="contact-codextra"),
    path("about/", views.about, name="about-codextra"),
    path("terms-conditions/", views.terms_conditions, name="terms-conditions-codextra"),
    path("login/", views.login_view, name="login-codextra"),
    path("signup/", views.signup_view, name="signup-codextra"),
]
