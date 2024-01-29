# 베이스 이미지 
FROM python:3.9-slim

# /app 디렉터리 생성 및 이동
WORKDIR /app

# 동일 경로에 있는 이미지 파일 도커파일에 복사
COPY requirement.txt .
COPY app/static static
COPY app/template template
COPY app.py .

# 파이썬 실행에 필요한 모듈 설치
RUN pip install --no-cache-dir -r requirement.txt

# 컨테이너로 동작 시 해당 소스 실행
CMD ["python","app.py"]
