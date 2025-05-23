local params = import 'params.libsonnet';
local common = import 'apps/common.jsonnet';
local nginxValues = import 'environments/dev/nginx.jsonnet';
local redisValues = import 'environments/dev/redis.jsonnet';

{
  apiVersion: 'v1',
  kind: 'List',
  items: [
    common(params + nginxValues)['deployment.json'],
    common(params + nginxValues)['service.json'],
    common(params + redisValues)['deployment.json'],
    common(params + redisValues)['service.json'],
  ]
} 