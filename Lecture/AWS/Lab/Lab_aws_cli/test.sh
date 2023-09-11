aws ec2 describe-subnets \
--filter "Name=vpc-id,Values=$VPCID" \
--query  Subnets[].[SubnetId,CidrBlock,Tags] | cat > 1.json

aws ec2 describe-internet-gateways \
--filter Name=internet-gateway-id,Values=$IGW | cat > 2.json