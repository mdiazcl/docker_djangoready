import os, sys
 
def init_django(project_name=None): 
    os.chdir("/djangocode/") 
    project_name = project_name or os.environ.get('DJANGO_PROJECT_NAME') or None 
    if project_name == None: 
        raise Exception("ERROR WHILE LOADING PROJECT")
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', f'{project_name}.settings') 
    os.environ["DJANGO_ALLOW_ASYNC_UNSAFE"] = "true" 
    import django 
    django.setup()