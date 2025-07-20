get_id=$(ps auxww | grep openvpn | awk 'NR==1{print $2}')
get_id2=$(ps auxww | grep openvpn | awk 'NR==2{print $2}')
echo "Killing Process with ID of $get_id"
echo "Killing Process with ID of $get_id2"
sudo kill -9 $get_id
sudo kill -9 $get_id2
