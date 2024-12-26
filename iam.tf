# Reference the existing IAM role
data "aws_iam_role" "ecs_task_execution_role" {
  name = "ecsTaskExecutionRole"
}

# First IAM Role Policy Attachment
resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy_1" {
  role       = data.aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

# Second IAM Role Policy Attachment (if needed)
resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy_2" {
  role       = data.aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerServiceforEC2Role"
}
