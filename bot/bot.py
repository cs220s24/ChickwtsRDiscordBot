# bot.py
import os
import random
import subprocess

import discord
from dotenv import load_dotenv

load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')
GUILD = os.getenv('DISCORD_GUILD')

intents = discord.Intents.default()
intents.messages = True  # Enables receiving messages
intents.guilds = True  # Enables guild-related events
intents.message_content = True

# Create a subclass of Client to handle events
class MyClient(discord.Client):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    async def on_ready(self):
        guild = discord.utils.get(client.guilds, name=GUILD)
        channel = self.get_channel(1225311572411285558)  
        await channel.send("Hello I am the Chickwts plot bot!\nType the following command to see list of plot options:\n!options")
        print(
            f'{client.user} is connected to the following guild:\n'
            f'{guild.name}(id: {guild.id})\n'
	        f'Logged in as {self.user} (ID: {self.user.id})'
    )

    async def on_message(self, message):
        if message.author == self.user:
            return

        # Check for user message and displays appropriate response
        if message.content.startswith('!options'):
            await message.channel.send('These are the commands I can run:\n!ggplot boxplot\n!ggplot histogram\n!ggplot barplot')

	# Command to generate boxplot using R script
        elif message.content.startswith('!ggplot boxplot'):
            # Call the R script to generate the plot
            subprocess.run(['Rscript', 'generateBoxplot.R'], check=True)
            # Send the generated image to the channel
            with open('boxplot_chickwts.png', 'rb') as f:
                picture = discord.File(f)
                await message.channel.send('Boxplot for the chickwts dataset:', file=picture)
	    # Remove the PNG file after sending it
       	    os.remove('boxplot_chickwts.png')
	
# Create an instance of the client and run it
client = MyClient(intents=intents)
client.run(TOKEN)

