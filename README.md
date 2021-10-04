# Docker-practice


## Docker 명령어

### container 관련 명령어 

#### 1. container 목록 관련 
```
docker container ps (= docker ps)
```
현재 실행중인 컨테이너 목록 보기 

```
docker container ps -a (= docker ps -a)
```
모든 컨테이너 목록보기(실행중이지 않은 컨테이너 포함)

```
docker container ps -q (= docker ps -q)
```
현재 실행중인 컨테이너의 ID값 목록 보기

``` 
docker ps (-a) --format '{{.<컬럼명>}}'
```
container의 목록을 확인할 때, 보고 싶은 컬럼만 검색하고 싶은 경우에 사용한다. <br>
예를들어, 컬럼명에 Names를 입력하면 container의 이름만 보여줍니다.

#### 2. container 실행/정지 관련 
```
docker container run <추가명령어> --name <컨테이너 이름> <이미지 이름> <실행할 명령어>
```
위의 명령어는 기존의 이미지를 기반으로 새로운 컨테이너를 생성하는 명령어입니다.<br>
추가 명령어로는 ```-it```를 이용해 대화식으로 실행할 것인지, ```-p```포트 설정이 필요한지 등등 다양하게 사용이 된다.

```
docker container start <컨테이너 이름>
```
정지된 상태인 container를 실행시킬 때 사용

```
docker container stop <컨테이너 이름>
```
실행중인 container를 정지시킬 때 사용

#### 3. container 접속/해제 관련

```
docker attach <추가옵션> <컨테이너 이름>
```
현재 실행중인 컨테이너에 접속하기 위한 명령어

```
docker exec <추가 옵션> <컨테이너 이름> <실행 명령어>
```
외부에서 컨테이너 진입할 때 사용

```
exit
```
접속한 컨테이너 안에서 밖으로 빠져나올 때 사용합니다. <br>
exit로 빠져나오게 되면, 기존에 실행중이던 container는 정지합니다.<br>
단, exec로 접속했을 경우에는 exit로 빠져나와도 컨테이너는 계속 실행중

```
ctrl+p And ctrl+q
```
접속컨테이너를 빠져나옴 <br>
exit와 달리, dispatch로 빠져나오기때문에 컨테이너가 계속 실행중인 상태

### image 관련 

#### 1. image 목록 관련

```
docker images
```
image의 목록을 확인

#### 2. image 다운, 생성 
```
docker pull <이미지 이름>
```
이미지를 다운로드할 때 사용

```
docer search <이미지 이름>
```
이미지 이름이 포함된 image의 목록을 보여줍니다. 

```
docker commit <컨테이너 이름> <생성할 이미지 이름>
```
현재 생성해 놓은 컨테이너를 기반으로 새로운 이미지를 생성하고 싶은 경우 사용


