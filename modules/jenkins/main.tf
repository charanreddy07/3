resource "aws_secretsmanager_secret" "jenkins_aws_creds" {
  name = "jenkins-aws-credentials"
}

resource "aws_secretsmanager_secret_version" "jenkins_aws_creds_version" {
  secret_id     = aws_secretsmanager_secret.jenkins_aws_creds.id
  secret_string = jsonencode({
    AWS_ACCESS_KEY_ID     = var.aws_access_key_id
    AWS_SECRET_ACCESS_KEY = var.aws_secret_access_key
  })
}

