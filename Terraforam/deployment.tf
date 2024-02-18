resource "kubectl_manifest" "test" {
    yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nodejs-app
spec:
  selector:
    matchLabels:
      app: nodejs
  template:
    metadata:
      labels:
        app: nodejs
    spec:
      containers:
      - name: nodejs-app
        image: yehiasa/helloworld:ignite
        ports:
        - containerPort: 3000

YAML
}