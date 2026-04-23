data "aws_ami" "ami_id" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}


data "aws_ami" "sonarqube" {
  most_recent = true
  owners      = ["679593333241"] # Solve DevOps

  filter {
    name   = "name"
    values = ["SolveDevOps-SonarQube-Server-Ubuntu24.04-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}