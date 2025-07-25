echo "----------------------------------------------------------------------------" >> /DIRECTORY/TO/FILE/backup.log
echo "$(date +%F_%H-%M-%S)" >> /DIRECTORY/TO/FILE/backup.log
rsync -hvrPt -e 'ssh -p PORT' user@REMOTE_IP:/REMOTE/DIRECTORY/DIR1 /DIRECTORY/TO/BACKUP/DIR1 >> /DIRECTORY/TO/FILE/backup.log
rsync -hvrPt -e 'ssh -p PORT' user@REMOTE_IP:/REMOTE/DIRECTORY/DIR2 /DIRECTORY/TO/BACKUP/DIR2 >> /DIRECTORY/TO/FILE/backup.log
rsync -hvrPt -e 'ssh -p PORT' user@REMOTE_IP:'/REMOTE/DIRECTORY/DIR NAME WITH SPACE' '/DIRECTORY/TO/BACKUP/DIR3' >> /DIRECTORY/TO/FILE/backup.log
echo "----------------------------------------------------------------------------" >> /DIRECTORY/TO/FILE/backup.log