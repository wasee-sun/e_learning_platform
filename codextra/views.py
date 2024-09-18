from django.shortcuts import render
import codextra.models as models

# Create your views here.
def home(request):
    courses = models.Course.objects.all()
    categories = models.Category.objects.all()
    return render(request, 'codextra/home.html', {
        "courses": courses,
        "categories": categories
    })
    
def contact(request):
    return render(request, 'codextra/contact.html')

def about(request):
    return render(request, 'codextra/about.html')

def terms_conditions(request):
    return render(request, 'codextra/terms_conditions.html')

def login_view(request):
    pass

def signup_view(request):
    pass