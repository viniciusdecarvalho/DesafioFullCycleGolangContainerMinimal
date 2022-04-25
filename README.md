# DesafioFullCycleGolangContainerMinimal
Desafio FullCycle com imagem docker com o mínimo pra rodar app Golang, devendo ter até 2MB.

### Construir imagem
docker image build -t vinniccius/golang-rocks:v1 .
docker tag vinniccius/golang-rocks:v1 vinniccius/golang-rocks:latest

### Construir opção do buildx
docker buildx build --platform linux/amd64 -t vinniccius/golang-rocks:v1 .

### Listar imagens
docker image ls | grep 'golang-rocks'

### Executar imagem
docker container run --rm vinniccius/golang-rocks:v1

### Referencias
https://jpetazzo.github.io/2020/02/01/quest-minimal-docker-images-part-1/

### docker hub
https://hub.docker.com/r/vinniccius/golang-rocks