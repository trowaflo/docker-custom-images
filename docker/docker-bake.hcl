group "default" {
    targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["registry:local"]
  output = [
    "type=image",
    "name=ghcr.io/${GITHUB_ACTOR}/alpine-envsubst:${GITHUB_REF_NAME}",
    "name=ghcr.io/${GITHUB_ACTOR}/alpine-envsubst:${GITHUB_SHA}"
  ]
}
