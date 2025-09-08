import subprocess
import os

if os.name == "nt":
    shell_value=True
    count = "-n"
    results = subprocess.run(["wmic", "bios", "get", "serialnumber"], shell=shell_value, capture_output=True, text=True)
    #Source: https://superuser.com/questions/1178674/wmic-is-not-recognized-as-an-internal-or-external-command-operable-program-or
    # wmic is deprecated in W11, use "Get-WmiObject -Class Win32_Bios | Select SerialNumber" instead
    wmi = subprocess.run(["Get-WmiObject", "-Class", "Win32_Bios"], shell=shell_value, capture_output=True, text=True)
    wmi_pipe = subprocess.run(["Select","SerialNumber"],shell=True, capture_output=True, text=True, input=wmi.stdout)
    cmd = subprocess.run(["systeminfo.exe"], shell=shell_value, capture_output=True, text=True)
    pipe1 = subprocess.run(["findstr","Manufacturer"],shell=True, capture_output=True, text=True, input=cmd.stdout)
    pipe2 = subprocess.run(["findstr","Model"], shell=True, capture_output=True, text=True, input=cmd.stdout)
    owner=input("Owner: ")
    output = "---------------------------\n %s\n %s\n\n %s\n %s\n---------------------------\n"%(results.stdout, owner, pipe1.stdout, pipe2.stdout)
    file = open("\\\\Server_IP\\DIR1\\DIR2\\system.txt", "a")
    file.write(output)
    file.close()
else:
    print("Operating system is not Windows!")
