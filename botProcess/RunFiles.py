import subprocess

def runFile(file):
    try:
        
        if file.endswith(".py"):
            subprocess.run(["python3", file])
        # elif file.endswith(".sh"):
        #        #chmod before running the file
        #     #this is risky because it gives the bot user shell access
        #     #disscuss this with coleman and see if there is a better way
        #     subprocess.run(["chmod", "+x", file])
        #     subprocess.run(["sh", file])
        elif file.endswith(".r"):
            subprocess.run(["Rscript", file])
        elif file.endswith(".java"):
            subprocess.run(["javac", file])
      
    except Exception as e:
        
        print(e)
        return False
    return True


def main ():
    runFile("/Users/kanany/DevOps/DiscordBotCallingRfromPython/FileExamples/fileexample.py")
    # runFile("fileexample.sh")
    # runFile("fileexample.r")
    # runFile("fileexample.java")
    
if __name__ == "__main__":
    main()