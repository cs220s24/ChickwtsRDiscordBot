# DiscordBotCallingRfromPython

## Yousuf, Saul Sanchez, Alan Fuentes 

- Discord Bot
- Call R to plot something provided by user
- Use subprocess to call R from Python
- Deploy on EC2 
- Dockerize
- Manage Credentials

### Setup

- Create .env file in bot directory with DISCORD_TOKEN = Bot's token and DISCORD_GUILD = name of the discord guild
- (On Mac) Go to Apps->Python(3.12)->InstallCertificates.command and run it if necessary
- Create virtual environment and install dependencies

### Docker Setup

- Ensure .env file is present as in normal setup, located in the bot directory
- Run "docker-compose up -d" to start the container in detached mode
- Check logs with "docker-compose logs" 
- Stop and remove the container with "docker-compose down"

