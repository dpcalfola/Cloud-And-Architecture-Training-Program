### API gateway
* API gateway는 RESTful API를 생성하고 관리할 수 있는 서버리스 서비스
* 일종의 Proxy 서버

* AWS WAF(Web Application Firewall)을 추가 할 수 있음
  * 7개층 공격 방어
  * DDos 방어
  



### Amazon SQS

* Queue
  * 최대 크기 256kb
  * 이미지처럼 큰 데이터는 S3에 저장하고, SQS에는 S3의 주소만 전달하는 방식으로 사용



### Amazon SNS (Simple Notification Service)

* 1:다 방식의 메시지 전송 서비스
* 게시 구독(Publish/Subscribe) 메시징 패러다임
* Push 매커니즘
  * push 만 하므로 회수 옵션이 없고 처리 성공을 보장하지 않음
  * FIFO



### Kinesis
* 실시간으로 발생하는 서비스를 실시간으로 수집



### Step Functions
* 여러개의 람다를 연결하여 워크 플로우를 만들 수 있음