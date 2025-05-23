# Nginx Jsonnet Example

This is a simple example of using Jsonnet to manage Kubernetes manifests for an Nginx deployment.

## Structure

```
jsonnet-nginx/
├── params.libsonnet      # Default parameters
├── nginx.jsonnet         # Main manifest definitions
└── environments/         # Environment-specific configurations
    ├── dev.jsonnet      # Development environment
    └── prod.jsonnet     # Production environment
```

## Usage

To generate manifests for a specific environment:

```bash
# For development environment
jsonnet -m manifests environments/dev.jsonnet

# For production environment
jsonnet -m manifests environments/prod.jsonnet
```

## Parameters

The following parameters can be configured in `params.libsonnet` or overridden in environment-specific files:

- `name`: Application name
- `namespace`: Kubernetes namespace
- `replicas`: Number of replicas
- `image`: Container image
- `containerPort`: Container port
- `servicePort`: Service port
- `serviceType`: Service type (ClusterIP, LoadBalancer, etc.)
- `labels`: Kubernetes labels 