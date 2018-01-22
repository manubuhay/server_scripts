for (( i=0; i<12; i++ ))
do
inotifywait -re create -re modify "/var/www/html/ampwebsite/html/customize/asset"
if [ $? == 0 ]
then
       sleep 3
       echo "Applying chmod command." >> /root/script/watch_changes.log 
       chmod -R 774 /var/www/html/ampwebsite/html/customize/asset/*.*
fi
sleep 5
done

#Note this script requires inotifywait to be installed in the system globally
