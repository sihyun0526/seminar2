# 베이스 이미지로 Python 3.9 사용
FROM python:3.9

# 작업 디렉토리를 설정
WORKDIR /app

# 요구사항 파일을 컨테이너에 복사
COPY . /app

# 필요한 패키지 설치
RUN pip install --no-cache-dir flask

# 컨테이너가 실행될 때 실행될 명령어
CMD ["python", "seminar.py"]



