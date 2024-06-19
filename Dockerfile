# 베이스 이미지로 Python 3.9 사용
FROM python:3.9

COPY . /app

# 작업 디렉토리를 설정
WORKDIR /app

# 컨테이너가 실행될 때 실행될 명령어
# CMD ["python", "seminar.py"]



