```shell
aws s3 ls

aws configure

aws s3 mb s3://test-fola-230906

echo "test file" > TestFile

aws s3 cp TestFile s3://test-fola-230906
aws s3 ls s3://test-fola-230906

```


```shell
aws ec2 describe-instances

```


* aws configure data
    * ~/.aws/credentials
    * ~/.aws/config


```shell
aws --version
aws configure list

```



--dry-run : 실제로 실행하지 않고, 실행 가능 여부만 확인
--output : 출력 형식 지정







### AWS IAM Policy

* IAM 대시보드 -> 도구 -> 정책 시뮬레이터
  * 특정 IAM 이 특정 리소스에 접근 권한이 있는지 시뮬레이션 가능

  


  
### ARN

ARN: Amazon Resource Name

arn:aws:iam::283676039417:user/cli-user
