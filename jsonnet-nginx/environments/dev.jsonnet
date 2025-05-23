local params = import '../params.libsonnet';
local common = import '../apps/common.jsonnet';
local nginxValues = import './dev/nginx.jsonnet';
local redisValues = import './dev/redis.jsonnet';

{
  'nginx-deployment.json': common(params + nginxValues)['deployment.json'],
  'nginx-service.json': common(params + nginxValues)['service.json'],
  'redis-deployment.json': common(params + redisValues)['deployment.json'],
  'redis-service.json': common(params + redisValues)['service.json'],
} 