local params = import 'params.libsonnet';
local common = import 'apps/common.jsonnet';
local env = std.extVar('environment');
local devNginx = import 'environments/dev/nginx.jsonnet';
local prodNginx = import 'environments/prod/nginx.jsonnet';
local devRedis = import 'environments/dev/redis.jsonnet';
local prodRedis = import 'environments/prod/redis.jsonnet';

local nginxValues = if env == 'prod' then prodNginx else devNginx;
local redisValues = if env == 'prod' then prodRedis else devRedis;

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