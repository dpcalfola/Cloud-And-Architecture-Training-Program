# Session Management

다중 웹 서버를 사용할 경우 세션이 하나의 웹 서버와면 연결 되어 있으므로 
새로 고침 할 때마다 다른 웹 서버로 연결되어 세션이 유지되지 않는다.


* Solution 1: Sticky Session
    * 세션을 유지하기 위해 사용자를 특정 웹 서버에 고정시킨다.
    * 세션이 유지되고 있는 웹 서버가 다운 될 경우 로그아웃 됨

* Solution 2: Login Server 
  * DynamoDB, ElastiCache(Redis) 등을 사용하여 세션을 관리하는 서버를 만든다.





## DB 접속 정보 관리
* 외부에 있는 systems Manager Parameter Store를 사용하여 DB 접속 정보를 관리한다.