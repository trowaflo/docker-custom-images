group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
<<<<<<< HEAD
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  # output = ["./bin"]
  tags = ["registry:local"]
  targets = ["image-local"]
=======
    context = "./alpineEnvsubst"
    dockerfile = "Dockerfile"
>>>>>>> 0f7563f (Terraform: Add Docker workflow and Dockerfile for alpineEnvsubst)
}
