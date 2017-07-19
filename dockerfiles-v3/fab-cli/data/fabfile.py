from fabric.api import put, run

def hello():
    run('hostname')
