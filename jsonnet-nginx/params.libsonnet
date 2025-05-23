{
  name: 'nginx',
  namespace: 'default',
  replicas: 1,
  image: 'nginx:1.25',
  containerPort: 80,
  servicePort: 80,
  serviceType: 'ClusterIP',
  labels: {
    app: 'nginx',
  },
} 