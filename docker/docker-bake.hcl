group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["registry:ghcr.io/${{ github.actor }}/alpineEnvsubst"]
  output = ["type=docker"]
}
