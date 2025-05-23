function(params)
{
  'deployment.json': {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: params.name,
      namespace: params.namespace,
      labels: params.labels,
    },
    spec: {
      replicas: params.replicas,
      selector: {
        matchLabels: params.labels,
      },
      template: {
        metadata: {
          labels: params.labels,
        },
        spec: {
          containers: [
            {
              name: params.name,
              image: params.image,
              ports: [
                {
                  containerPort: params.containerPort,
                },
              ],
            },
          ],
        },
      },
    },
  },
  'service.json': {
    apiVersion: 'v1',
    kind: 'Service',
    metadata: {
      name: params.name,
      namespace: params.namespace,
      labels: params.labels,
    },
    spec: {
      type: params.serviceType,
      ports: [
        {
          port: params.servicePort,
          targetPort: params.containerPort,
        },
      ],
      selector: params.labels,
    },
  },
} 