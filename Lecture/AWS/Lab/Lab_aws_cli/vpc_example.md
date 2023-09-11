# VPC Example


* Source:
https://docs.aws.amazon.com/cli/latest/reference/ec2/create-vpc.html




## Commands
```shell
aws configure
aws configure list
aws ec2 describe-instances

```



```shell
aws ec2 describe-instances \
    --filters "Name=tag:Owner,Values=my-team"
```

```shell
aws ec2 describe-instances \
--filters Name=tag:Name,Values=CLI-instance \
--query Reservations[].Instances[].InstanceId
```

```shell
aws ec2 describe-instances \
--filters Name=tag:Name,Values=CLI-instance
```

