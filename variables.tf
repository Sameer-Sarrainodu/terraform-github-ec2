variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}

variable "sg_ids" {
    type=string
    default="sg-0e431449e6b8a4604"

}

variable "instance_typer" {
    default="t2.micro"
    validation {
      condition = contains(["t2.micro","t3.micro","t2.medium"],var.instance_typer)
      error_message = "valid values t2.micro,t3.micro,t2.medium"

    }
}
variable "tags" {
    type = map
}
