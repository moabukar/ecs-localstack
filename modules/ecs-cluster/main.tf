resource "aws_ecs_cluster" "this" {
  name = "nginx-cluster"
}

output "cluster_id" {
  value = aws_ecs_cluster.this.id
}
