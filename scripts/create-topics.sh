#!/bin/bash

# Kafka brokers 정보
BROKERS="kafka1:29092,kafka2:29092,kafka3:29092"

# 토픽 리스트 파일 경로
TOPICS_FILE="/topics.txt"

# 토픽 생성 함수
create_topic() {
  local topic="$1"
  local partitions="$2"
  local replication_factor="$3"
  
  kafka-topics --create --bootstrap-server "$BROKERS" --topic "$topic" --partitions "$partitions" --replication-factor "$replication_factor"
}

# 토픽 리스트 파일에서 토픽 정보를 읽어와서 생성
echo "Creating topics from $TOPICS_FILE:"
while read -r topic partitions replication_factor; do
  echo "- Topic: $topic, Partitions: $partitions, Replication Factor: $replication_factor"
  create_topic "$topic" "$partitions" "$replication_factor"
done < "$TOPICS_FILE"
