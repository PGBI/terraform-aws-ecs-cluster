terraform {
  required_version = ">= 0.12"
}

/**
 * The cluster.
 */
resource "aws_ecs_cluster" "main" {
  name = "${var.project.name_prefix}-${var.name}"
  tags = var.project.tags
}
