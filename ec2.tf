resource "aws_instance" "this" {
    ami=var.ami_id 
    instance_type=var.instance_typer
    vpc_security_group_ids=var.sg_ids
    tags=var.tags
  
}