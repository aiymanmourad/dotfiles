import webbrowser
import yaml


with open("plugins.yaml","r") as f:
    repos = yaml.load(f)

for i in range(len(repos)):
        webbrowser.open("https://github.com/" + repos[i] + ".git")

