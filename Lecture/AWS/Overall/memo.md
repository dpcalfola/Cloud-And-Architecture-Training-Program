# 참고


### 인스턴스의 볼륨
* 인스턴스의 루트 디렉토리 스토리지는 SSD 만 가능하다 (HDD 불가능)
* 인스턴스 루트 -> EBS


 

### Metric
* CloudWatch에서 수집하는 데이터의 단위
* 특정 리소스의 성능 지표



### AAA security
* (Authentication, Authorization, Accounting)
* Authentication: 인증(IAM)
* Authorization: 권한(ACL)
* Accounting: 계정(로그)
  * AWS CloudTrail - 어떤 사용자가 언제 어떤 API를 호출했는지 기록



### 알람 VS 이벤트
* 알람:
  * 설정한 특정 조건을 충족했을때(트레숄드)

* 이벤트:
  * 특정 시간
  * 상태 변화



### Elasticity (탄력성)

* CloudWatch -> Auto Scaling -> ELB target group



### Public Subnet vs Private Subnet
* Route Table
  * Public Subnet: IGW
  * Private Subnet: NAT Gateway




### VPC endpoint

  1. Gateway endpoint
     * On-premise 물리서버 -> VPC endpoint 연결 불가능

  2. Interface endpoint
     * On-premise 물리서버 -> VPC endpoint 연결 가능
     * 과정:
       * VPN 혹은 전용선으로 연결 확보
       * DNS 설정을 통해 VPC endpoint로 접근 가능하도록 설정





### 연습
* aws workshop < 원하는 아키텍쳐 > 검색
* AWS skill Builder
* AWS Mainpage -> 설명서 -> 모든 설명서 