group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["registry:local"]
  output = ["type=docker"]
}
