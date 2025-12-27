output "jenkins_secret_arn" {
  value = aws_secretsmanager_secret.jenkins_aws_creds.arn
}