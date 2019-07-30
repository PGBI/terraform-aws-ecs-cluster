# AWS ECS Cluster module

## Description

This module is a simple wrapper around the aws resource `aws_ecs_cluster`. It creates a namespaced ECS Cluster.

## Usage

```hcl
/**
 * Initialize the project
 */
module "project" {
  source  = "PGBI/project/aws"
  version = "~>0.1.0"

  name     = "myproject"
  vcs_repo = "github.com/account/project"
}

/**
 * Create a cluster that will be named "prod-myproject-mycluster" provided that the terraform workspace is "prod".
 */
module "cluster" {
  source  = "PGBI/ecs-cluster/aws"
  version = "~>0.1.0"

  name    = "mycluster"
  project = module.project
}
```
