group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./alpineEnvsubst"
  dockerfile = "Dockerfile"
  output = ["./bin"]
}
