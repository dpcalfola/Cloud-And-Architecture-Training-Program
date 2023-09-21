#!/bin/bash

######  FAILED - THIS SCRIPT DOESN'T WORKS  ######



# < EKS 배포할 VPC 정보 확인 >


# CLUSTER_NAME 변수 확인
echo $CLUSTER_NAME

# EKS를 배포할 myeks-VPC 정보 확인
aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$CLUSTER_NAME-VPC" | jq

# EKS를 배포할 myeks-VPC ID 값만 확인
aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$CLUSTER_NAME-VPC" | jq -r .Vpcs[].VpcId



# EKS 배포할 VPC ID 변수 저장

# VPCID 변수에 myeks-VPC ID 값을 저장
export VPCID=$(aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$CLUSTER_NAME-VPC" | jq -r .Vpcs[].VpcId)

# VPCID를 전역 변수로 선언
echo "export VPCID=$VPCID" >> /etc/profile

# VPCID 변수 호출
echo $VPCID

# <EKS 배포할 VPC의 서브넷 정보 확인>
# EKS를 배포할 VPC의 전체 서브넷 정보 확인
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$VPCID" --output json | jq

# EKS를 배포할 VPC의 퍼블릭 서브넷 정보 확인
aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet1" | jq

aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet2" | jq

# EKS를 배포할 VPC의 퍼블릭 서브넷 ID 값만 확인
aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet1" --query "Subnets[0].[SubnetId]" --output text

aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet2" --query "Subnets[0].[SubnetId]" --output text



# <EKS 배포할 퍼블릭 서브넷 ID 변수 저장>

# 변수에 퍼블릭 서브넷 ID 값을 저장
export PubSubnet1=$(aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet1" --query "Subnets[0].[SubnetId]" --output text)

export PubSubnet2=$(aws ec2 describe-subnets --filters Name=tag:Name,Values="$CLUSTER_NAME-PublicSubnet2" --query "Subnets[0].[SubnetId]" --output text)

# 퍼블릭 서브넷 ID를 전역 변수로 선언
echo "export PubSubnet1=$PubSubnet1" >> /etc/profile

echo "export PubSubnet2=$PubSubnet2" >> /etc/profile

# VPCID 변수 호출
echo $PubSubnet1

echo $PubSubnet2



# <변수 호출 (종합)>
echo $AWS_DEFAULT_REGION

echo $CLUSTER_NAME

echo $VPCID

echo $PubSubnet1,$PubSubnet2