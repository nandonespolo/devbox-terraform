# dev-box

### The purpose of this box is to have the basic necessary config to start deploying Terraform using docker.

You need to run `aws configure` in your jenkins machine so the aws credentials will be shared with the container

To deploy that just follow the instruction on the makefile:
`make build`, `make start` and `make deploy`
