import os
import shutil
import subprocess
import json 
from getpass import getpass
import platform
import sys


keystorePath = "./.secrets/keystore.json"
paths_to_remove = ["/build", "/source", "/CMakeLists.txt", "/create_release.py", "/.git", "/.gitmodules", "/.gitignore", "/.vscode", "/.gitattributes"]
paths_to_include  = ["/code", "/data", "/docs", "/help", "/javascript", "/jsui", "/externals", "/media", "/misc", "/patchers", "/icon.png", "/license.txt", "/README.md", "/package-info.json"]
externals = ["grainflow~", "grainflow.spatview~", "grainflow.waveform~"]

generator = "-G Xcode" if (platform.system() == "Darwin") else ""

def cmake_build():
    print("configuring with cmake...")
    if (os.path.isdir("./build")):
        shutil.rmtree("./build")
    os.mkdir("./build")
    p = subprocess.Popen(["cmake", "-B./build",  "-S.",  f'{generator}']) 
    p.wait()
    print("building with cmake...")
    p =  subprocess.Popen(["cmake", "--build", "build", "--config", "Release"])  
    p.wait()
    print("Build Complete!")

def macos_codesign():
    if (platform.system() != "Darwin"):
        print("not on mac os and connot sign")
        return
    macoskey = ""
    with open(keystorePath) as keystore:
        keys = json.load(keystore)
        macoskey = keys["developer_team_code"]

    if len(macoskey) <= 0:
        print("err: not valid key found")
        return
    
    dest = "./externals/grainflowExternals_temp"
    archive = "./externals/grainflowExternals"
    if os.path.isdir(dest): 
        shutil.rmtree(dest)
    os.mkdir(dest)

    pw = getpass("System password")
    for external in externals:
        ex_path = f'./externals/{external}.mxo'
        cmd = f'echo {pw} | sudo codesign -s {macoskey} --options runtime --timestamp --force --deep  -f {ex_path}'
        p = subprocess.Popen(cmd, shell=True)  
        p.wait()
        shutil.copytree(ex_path, dest + f'/{external}.mxo')
        

        
    print("zipping into archive for submission...")
    if os.path.isfile(archive+".zip"):  
        os.remove(archive+".zip")
    shutil.make_archive(archive, "zip", dest)

    print("Uploading for approval...")

    cmd = f'xcrun notarytool submit {archive}.zip --keychain-profile grainflow' 
    p = subprocess.Popen(cmd, shell=True)  
    p.wait()
    output, error = p.communicate()
    submissionid = input("ID: ")
    cmd = f'xcrun notarytool wait --keychain-profile grainflow {submissionid}'
    p = subprocess.Popen(cmd, shell=True)  
    p.wait()
    for external in externals:
        shutil.rmtree(f'./externals/{external}.mxo')
    shutil.unpack_archive(archive+".zip", "./externals")
    mac_staple()
    shutil.rmtree(dest)
    os.remove(archive+".zip")

def package_release():
    src = "./"
    dest = "./release"
    archive = "./grainflow"
    if os.path.isdir(dest):
        shutil.rmtree(dest)
    if os.path.isfile(archive+".zip"):  
        os.remove(archive+".zip")

    print("copying all files into release folder")

    for p in paths_to_include:
        src_path = src+p
        dest_path = dest+p
        print(f'copying {p}')
        if os.path.isdir(src_path):
            shutil.copytree(src_path, dest_path)
        if os.path.isfile(src_path):
            shutil.copy2(src_path, dest_path)
    print("zipping...")
    shutil.make_archive(archive, 'zip', dest)
    print("cleaning up")

    shutil.rmtree(dest)

def mac_staple():
    if (platform.system() != "Darwin"): return
    for external in externals:
        cmd = f'xcrun stapler staple ./externals/{external}.mxo'
        p = subprocess.Popen(cmd, shell=True)  

def mac_validate():
    if (platform.system() != "Darwin"): return
    for external in externals:
        cmd = f'codesign -verify -verbose ./externals/{external}.mxo'
        p = subprocess.Popen(cmd, shell=True)  

def main():
    args = sys.argv
    modes = []

    
    if len(args) > 1:
        modes = args[1:]
    if ('all' in modes):
        cmake_build()
        macos_codesign()
        package_release()
    if ('build' in modes): cmake_build()
    if ('sign' in modes): macos_codesign()
    if ('pack' in modes): package_release()
    if ('staple' in modes): mac_staple()
    if('validate' in modes): mac_validate()

    if len(args) <= 1:
        res = input("Would you like to build for your current platform? (Y/N)" )
        if res.lower() == 'y': 
            cmake_build()
        if (platform.system() == "Darwin"):
            res = input("Would you like to codesign? (Y/N)" )
            if res.lower() == 'y': 
                macos_codesign()
        res = input("Would you like to zip a release package? (Y/N)" )
        if res.lower() == 'y': 
            package_release()

if __name__=="__main__":
    main() 