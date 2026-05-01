import kfp

client = kfp.Client(host="http://localhost:3000")

print(client.list_experiments())