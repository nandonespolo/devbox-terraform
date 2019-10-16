provider "aws" {
  region = "${var.aws_region}"
}

# main.tf
resource "aws_iam_user" "test" {
  name = "test"
}

variable "aws_region" {
  default = "eu-west-2"
}

# output.tf
output "IAM_user" {
  value = "${aws_iam_user.test.arn}"
}
