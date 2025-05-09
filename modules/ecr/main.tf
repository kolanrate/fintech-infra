resource "aws_ecr_repository" "ecr_repos" {
  for_each = toset(var.repositories)
  name     = each.value
  tags = var.tags

  image_scanning_configuration {
    scan_on_push = true
  }
}
