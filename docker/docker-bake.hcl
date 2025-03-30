variable "GITHUB_ACTOR" {}
variable "GITHUB_REF_NAME" {}
variable "GITHUB_SHA" {}

group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/${GITHUB_ACTOR}/alpine-envsubst:${GITHUB_REF_NAME}"]
}
