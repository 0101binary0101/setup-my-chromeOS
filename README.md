# setup-my-chromeOS

Wiping and Restoring
If you want to rebuild your ChromeOS system (Chromebook or ChromeOS Flex), just DO IT (powerwash  and refresh) !

Things that are not saved

Bluetooth Devices that are associated with your computer
Linux environment e.g. your application setup and settings  (see below on backing those up)
MyFiles folders ( Anything that you download) (see below on backing those up)
VPN settings
ChromeApp detailed settings ( such as Notifications, Camera usage , Microphone ) e.g. on  web apps like Slack etc I just instinctively know to go and set those.
Authenticated Apps that require you to scan a QR code or put in a sequence code, e.g. slack , telegram , whatsapp. 
'Termina' (Terminal) SSH keys / Config - The session entries are backed up just not the 'config' setting and the 'ssh_id' key - I normally put my ssh keys and config file in my linux .ssh directory so I can import them into Termina 
SSL Certificates - stored in chrome://certificate-manager
When you first login, your ChromeOS will bring back all your PWAs as they automagically restored by Google, e.g. MS Office Web (Outlook, teams), Slack, Telegram etc etc all the apps that you had above will re-appear. You will have to re-authenticate with items like Slack, Telegram, WhatsApp but that's a good thing isn't it ?





Can I backup my Developer Linux environment before I wipe and restore ? Sure - Done in 7 mins.
If you don't think you have everything saved off your Linux (e.g. not sure what Linux packages you installed or hidden config files or ssh keys you've made note of and just 'quickly' want your Linux partition saved off , you can does this by clicking on settings → type backup and head over to Developer Backup and Restore. Clicking on backup will create a crostini backup file. Depending on the amount of packages (vscode etc..) it'll create the .tini file in your specified location, e.g. Google Drive ...or 'Downloads' directory (ChromeOS) .....in my case it took approx 7 minutes to backup and generated a 1GB file.

![image](https://github.com/0101binary0101/setup-my-chromeOS/assets/47034357/fbc08a00-816d-4185-bfb9-d713b26d4165)


But to be honest the important directories in Linux are probably going to be in your home directory .ssh , .local, .vscode , .config, so I normally just do an rsync of my home directory to an external linux server which normally is normally about 150MB, mainly vscode settings  , but if you're away from home and just want to scrub and restore your linux partition then just use the above Backup and Restore method.
