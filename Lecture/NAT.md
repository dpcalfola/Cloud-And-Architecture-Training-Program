# NAT ( Network Address Translation )

## 기본개념
    - 사설 아이피를 공인 아이피로 변경
    - 사설 아이피를 사설 아이피로 다시 변경
    - 공인 아이피의 고갈로 인한 대책으로 개발 됨
    
### NAT table


### Static NAT
    - 외부에서 내부로 접근을 가능하게 해주는 유일한 NAT 방식
    - 커맨드

```shell
R1(config)# ip nat inside source static local_ip global_ip
R1(config)# ip nat inside
R1(config)# ip nat outside
```






###
    - NAT 는 원칙적으로 1:1이다
        - PAT 를 사용하면 1:N 이 가능하다
    - 공인아이피 1개로 여러개의 사설 아이피를 사용하기 위해 PORT 번호를 사용한다


### Dynamic NAT
    - IP 변환에 사용할 전역 풀 설정
    - ACL 로 매칭범위 설정


### Setting Process
    





할당받은 공인 아이피보다 사설 아이피의 대역이 많을때 PAT 사용한다



### 참고
    - Cisco 라우터에서는 Overload 키워드를 사용하면 PAT 기능을 사용한다는 뜻



