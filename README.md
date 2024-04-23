# DiscordBotCallingRfromPython

## Yousuf, Saul Sanchez, Alan Fuentes 

- Discord Bot
- Call R to plot something provided by user
- Use subprocess to call R from Python
- Deploy on EC2 
- Dockerize
- Manage Credentials

### Local Setup

- Make sure R is installed on your local machine
- Make sure you are in the bot directory
- Create .env file in bot directory with DISCORD_TOKEN = Bot's token and DISCORD_GUILD = name of the discord guild
- (On Mac) Go to Apps->Python(3.12)->InstallCertificates.command and run it if necessary
- Create virtual environment(python3 -m venv .venv), then activate virtual enviornment(Source .venv/bin/activate) 
- Install dependencies(pip3 install requirements.txt)
- Run the program(python3 bot.py) 

### Docker Setup

- Ensure .env file is present as in normal setup, located in the bot directory
- Run "docker-compose up -d" to start the container in detached mode
- Check logs with "docker-compose logs" 
- Stop and remove the container with "docker-compose down"

### EC2 Instance Setup
- Run command "sudo yum install -y git" to install git on the ec2 instance
- Clone the repository, enter git details if prompted
- Run command "sudo yum install -y R" to install R on the ec2 instance
- Follow local setup instructions from this point
