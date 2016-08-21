#!/bin/bash

instance_id=`ec2metadata --instance-id`
zone=`ec2metadata --availability-zone`
export AWS_DEFAULT_REGION=${zone:0:${#zone} - 1}

case "$@" in
"register" )
  aws elb register-instances-with-load-balancer --load-balancer-name $ELB_NAME --instances $instance_id
  ;;
"deregister" )
  aws elb deregister-instances-from-load-balancer --load-balancer-name $ELB_NAME --instances $instance_id
  ;;
* )
  exec $@
esac
