FROM node:10

# 이미지 내에서 복사된 파일들이 위치한 디렉토리 경로
# 사용 이유: 기본으로 할 때는 dev, home 등 폴더들이 있기 때문에 덮어씌워지는 현상을 막기 위해서 선언
WORKDIR /usr/src/docker-sample 

# 현재 위치 파일 도커 파일에 복사
COPY ./ ./

# package.json 등 라이브러리 설치
RUN npm install

# server.js 구동 명령어
ENTRYPOINT [ "node", "server.js" ]