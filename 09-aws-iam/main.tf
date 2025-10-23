provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "admin-user" {
  name = "Harshini"
  tags = {
    Description = " Technical Team Lead"
  }
}

resource "aws_iam_policy" "adminUser" {
  name   = "adminUsers"
  policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "harshini_admin_access" {
  user = aws_iam_user.admin-user.name

  policy_arn = aws_iam_policy.adminUser.arn
}