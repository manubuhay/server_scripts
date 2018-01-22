##### Check if service(in this case rethink) is running, restarts service if nothing is listening on port 8080 #####

for (( i=0; i<12; i++ ))
do
netstat -tulpn | grep 8080 #| grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/rethinkdb restart #> /dev/null
fi
sleep 5
done

##### Cron can only schedule jobs in minute intervals, sleep is added to make this script check every 5 seconds in a minute #####
