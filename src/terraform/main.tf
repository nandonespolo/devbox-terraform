provider "aws" {
  region = "eu-west-2"
}

resource "aws_iam_user" "test" {
  name = "test"
}

output "IAM_user" {
  value = "${aws_iam_user.test.arn}"
}
