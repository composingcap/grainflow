import os
import shutil
import subprocess
import json 
import platform
import sys
import re

root_path = "../"
patcher_roots  = ["patchers", "help", "extras"]

def main():
    for dir_path in patcher_roots:
        path = root_path + dir_path
        for root, dirs, files in os.walk(path):
            for file in files:
                purge_styles(root, file)


def purge_styles(root, file):
    if not file.endswith(".maxpat") and not file.endswith(".maxhelp"):
        return
    path = os.path.join(root, file)
    print(path)

    maxfile = open(path)
    maxtxt = maxfile.read()
    maxfile.close()
    maxjson = json.loads(maxtxt)


    maxjson= remove_fields_recursively(maxjson,["style","parentstyle","styles","subpatcher_template"])
    maxtxt = json.dumps(maxjson, indent= 4)
    maxfile = open(path, 'w')
    maxfile.write(maxtxt)
    maxfile.close()
    
def remove_fields_recursively(data, fields_to_remove):
    if isinstance(data, dict):
        data = {
            key: remove_fields_recursively(value, fields_to_remove)
            for key, value in data.items()
            if key not in fields_to_remove
        }
    elif isinstance(data, list):
        data = [remove_fields_recursively(item, fields_to_remove) for item in data]
    return data
if __name__=="__main__":
    main() 