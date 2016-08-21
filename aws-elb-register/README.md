# aws-elb-register

Simple (de)register current ec2 instance to classic elb

## Register to ELB

docker run --rm -e ELB_NAME=loadbalancer h3xby/aws-elb-register

## Deregister from ELB

docker run --rm -e ELB_NAME=loadbalancer h3xby/aws-elb-register deregister
