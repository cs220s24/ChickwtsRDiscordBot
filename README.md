# DiscordBotCallingRfromPython

## Yousuf, Saul Sanchez, Alan Fuentes 

- Discord Bot
- Call R to plot something provided by user
- Use subprocess to call R from Python
- Deploy on EC2 
- Dockerize
- Manage Credentials

## System Architecture
![system diagram](https://raw.githubusercontent.com/cs220s24/ChickwtsRDiscordBot/blob/main/SystemArchitecture.png)

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
- Run "docker-compose up --build -d" to start the container in detached mode and build it
- Check logs with "docker-compose logs" 
- Stop and remove the container with "docker-compose down"

### EC2 Instance Docker Setup
- Run command "sudo yum install -y git" to install git on the ec2 instance and clone the repo
- Run the command "sh EC2InstanceDocker.sh" to run the script to install and start docker and give user docker access
- Log out then log back in to your EC2 instance
- Navigate to the bot directory in the repo and run "docker-compose up --build -d" to start the container and build it
- Stop and remove the container with "docker-compose down"
