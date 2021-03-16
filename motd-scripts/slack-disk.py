#!/home/andre/cluster_management/raapoi-tools/motd-scripts/env/bin/python
import shutil
from slack_sdk.webhook import WebhookClient

with open('url.txt') as f:
    url=f.readline()
webhook = WebhookClient(url)

total, used, free = shutil.disk_usage("/nfs/scratch")
total2, used2, free2 = shutil.disk_usage("/nfs/scratch2")

free = free//(2**30)
free2 = free2//(2**30)

free='{:,}'.format(free).replace(',', ' ')
free2='{:,}'.format(free2).replace(',', ' ')

message=("Scratch Free : "+str(free) + "GiB \n" +
        "Scratch2 Free: "+str(free2) + "GiB")
response = webhook.send(text=message)
assert response.status_code == 200
assert response.body == "ok"