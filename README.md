# DesafioFullCycleGolangContainerMinimal
Desafio FullCycle com imagem docker com o mínimo pra rodar app Golang, devendo ter até 2MB.

# Construir imagem
docker image build -t vinniccius/golang-busybox:v2 .
docker tag vinniccius/golang-busybox:v2 vinniccius/golang-busybox:latest

## Construir opção do buildx
docker buildx build --platform linux/amd64 -t vinniccius/golang-busybox:v2 .

# Executar imagem
docker container run --rm vinniccius/golang-busybox:v2