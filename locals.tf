locals{
    ami=data.aws_ami.ami_id.id
    sonar_ami_id = data.aws_ami.sonarqube.id
    common_name_suffix="${var.project}-${var.environment}"
    common_tags={
        Project="roboshop"
        Environment="dev"
    }
}