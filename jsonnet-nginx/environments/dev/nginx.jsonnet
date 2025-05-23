{
  name: 'nginx',
  namespace: 'dev',
  replicas: 1,
  serviceType: 'ClusterIP',
  image: 'nginx:1.25',
  containerPort: 80,
  servicePort: 80,
  labels: {
    app: 'nginx',
  },
} 