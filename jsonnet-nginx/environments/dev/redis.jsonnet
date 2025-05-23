{
  name: 'redis',
  namespace: 'dev',
  replicas: 1,
  serviceType: 'ClusterIP',
  image: 'redis:7.0',
  containerPort: 6379,
  servicePort: 6379,
  labels: {
    app: 'redis',
  },
} 