group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
    context = "./alpineEnvsubst"
    dockerfile = "Dockerfile"
    tags = ["registry:local"]
}
