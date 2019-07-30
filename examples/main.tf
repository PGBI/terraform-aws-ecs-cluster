/**
 * Configure the AWS Provider
 */
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

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
 * Create a cluster
 */
module "cluster" {
  source  = "PGBI/ecs-cluster/aws"
  version = "~>0.1.0"

  name    = "mycluster"
  project = module.project
}
