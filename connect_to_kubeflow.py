import kfp
import os

client = kfp.Client(
            host="http://localhost:3000",
            namespace="kubeflow-user-example-com",
            client_id="user@example.com",
            existing_token=str(os.getenv('TOKEN'))
            )

print(client.list_experiments(namespace="kubeflow-user-example-com"))