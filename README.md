## kafka와 kafka ui, redis를 사용한 개발환경 구축


- 참고 문서
  https://levelup.gitconnected.com/kraft-kafka-cluster-with-docker-e79a97d19f2c

## Default Topic 설정방법

[Topics Text File](./scripts/topics.txt)

topics.txt파일 생성할 토픽을 추가한다.

```
name partitions replication_factor

```

순서로 작성

### 주의

각 토픽은 개행문자로 끝나야한다.
