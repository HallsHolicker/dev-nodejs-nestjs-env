# Docker를 이용한 node.JS의 nestjs 개발 환경

node.js의 nestjs의 개발 환경을 Docker에서 하기 위해서 만든 docker-compose
이 방법은 host에 npm 및 nestjs를 설치하지 않고 container 안에서 처리하게 만들어져 있습니다.


## Setup

초기 설정 - nestjs 프로젝트 생성을 위해 다음 단계를 최초 한번은 진행하셔야 합니다.

프로젝트명은 기본적으로 nestjs-test로 잡혀 있으며, 변경이 필요하시다면 다음 부분을 수정해 주시면 됩니다.

`.env`
```
DEV={프로젝트 명}
```

`.vscode/launch.json`
```
"remoteRoot": "/app/{프로젝트 명}"
```


```
docker-compose -f docker-compose-setup.yml up --build -d
```

nestjs를 최초로 받아서 가져오기에 시간이 조금 걸리면 설치가 다 되면 자동으로 컨테이너가 종료 됩니다. 또한 소스는 {프로젝트명} 폴더가 생성됩니다.

# Run

컨테이너 중지 후 실행시에는 약 30초 정도 대기 시간이 필요합니다.

## Start

일반적으로 실행 시킬 경우에 사용합니다.


```
docker-compose -f docker-compose.yml up --build -d
```

## Dev

개발 환경에서 실행 시킬 경우 사용합니다.


```
docker-compose -f docker-compose-dev.yml up --build -d
```

## Debug

디버깅 모드에서 실행 시킬 경우 사용합니다.


```
docker-compose -f docker-compose-debug.yml up --build -d
```

## 컨테이너 중지

컨테이너 중지

```
docker-compose stop
```

## 다중 프로젝트일 경우 

다중 프로젝트를 생성했을 경우 프로젝트간 변경 방법

docker-compose를 실행 할 때 다음 처럼 실행하면 됩니다.

### 프로젝트 생성

```
DEV={프로젝트명} docker-compose -f docker-compose-setup.yml up --build -d
```

### Start , Dev, Debug
```
DEV={프로젝트명} docker-compose -f docker-compose{-dev/debug}.yml up --build -d
```