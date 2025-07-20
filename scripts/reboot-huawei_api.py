from huawei_lte_api.Client import Client
from huawei_lte_api.AuthorizedConnection import AuthorizedConnection
# from huawei_lte_api.Connection import Connection

connection = AuthorizedConnection('http://username:password@ip_address/')

client = Client(connection) # This just simplifies access to separate API groups, you can use device = Device(connection) if you want
print("Rebooting Huawei Modem Router.....")
client.device.reboot()
print("Success!")