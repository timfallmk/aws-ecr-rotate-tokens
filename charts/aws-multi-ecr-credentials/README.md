# aws-multi-ecr-credentials

This Chart seamlessly integrate Kubernetes with multiple AWS ECR

Simply deploy this chart to your kubernetes cluster, and you will be able to pull and run images from your AWS ECR (Elastic Container Registry) in your cluster.

# Usage

Run the following command to install this chart

```sh
ACCOUNT=1234567890
REGION=eu-central-1
ACCESS_KEY=SHOULD_BE_IN_BASE64. Check that it does not have new line symbol
SECRET_KEY=SHOULD_BE_IN_BASE64. Check that it does not have new line symbol

helm install aws-multi-ecr-credentials-$ACCOUNT aws-multi-ecr-credentials/aws-multi-ecr-credentials \
  --set aws.account=$ACCOUNT \
  --set aws.region=$REGION \
  --set aws.accessKeyId="$ACCESS_KEY" \
  --set aws.secretAccessKey="$SECRET_KEY" \
  --set targetNamespace=default \
  --set cron="* */10 * * *"
```

That chart will create a secret object names `aws-registry-1234567890`.

In you kubernetes deployment use `imagePullSecrets: aws-registry-1234567890`.

Example:
```yaml
apiVersion: apps/v1
kind: Deployment
spec:
  template:
    spec:
      imagePullSecrets:
      - name: aws-registry-1234567890
      containers:
        - name: custom-container
          image: 1234567890.dkr.ecr.eu-central-1.amazonaws.com/custom-container:latest
```
