local params = import '../params.libsonnet';
local nginx = import '../nginx.jsonnet';

nginx(params + {
  namespace: 'prod',
  replicas: 3,
  serviceType: 'LoadBalancer',
}) 