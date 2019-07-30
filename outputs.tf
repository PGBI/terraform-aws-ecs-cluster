output "arn" {
  description = "ARN of the Cluster."
  value       = aws_ecs_cluster.main.arn
}

output "name" {
  description = "The Cluster's name."
  value       = aws_ecs_cluster.main.name
}
