DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm64 -f builder.Dockerfile -t intermediate_builder .
docker builder prune -f
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm64 -t tanq16/sec_docker:main_apple .
docker push tanq16/sec_docker:main_apple
