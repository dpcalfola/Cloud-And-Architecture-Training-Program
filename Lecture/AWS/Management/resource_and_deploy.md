- AMI 구성 요소
  - 인스턴스 볼륨 템플릿
  - 시작 권한
    - Start Permission 
    - AMI 사용 권한(프라이빗, 퍼블릭)
  - AMI 소스
    - AWS
    - 사용자 구축
    - AWS Marketplace
    - 커뮤니티 AMI




- 생성된 인스턴스 바탕으로 AMI 만들기
  - 생성된 AMI 는 리전에 종속(다른 리전으로 복사 가능)
  - 인스턴스에 추가 EBS 가 추가되었을 경우 추가된 내용 까지 모두 이미지화
  - AMI 생성 시 인스턴스의 상태는 중단 상태여야 한다




- Sysprep
  - Windows AMI 생성 시 필요
  - 인스턴스의 고유 정보를 제거
  - 인스턴스의 고유 정보
    - 사용자 계정
    - SID
    - 기타 등등
  - 윈도우 서버를 사용하고 이미지를 만들어 배포하려고 한다면
    - sysprep을 사용하여 고유정보를 삭제하고 이미지를 만들어야 한다





- EC2_Image_Builder












- AWS Control Tower










