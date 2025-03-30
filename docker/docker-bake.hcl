group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "../alpineEnvsubst"
  dockerfile = "Dockerfile"
  # output = ["./bin"]
  tags = ["registry:local"]
  targets = ["image-local"]ker workflow and Dockerfile for alpineEnvsubst)
}
