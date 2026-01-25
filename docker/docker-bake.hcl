variable "GITHUB_ACTOR" {}
variable "GITHUB_REF_NAME" {}
variable "GITHUB_SHA" {}

# Function to sanitize Docker tag names by replacing invalid characters
# Docker tags specification allows: a-z, A-Z, 0-9, _, ., -
# This function normalizes to lowercase and replaces invalid characters with dashes
# Transformations applied in order: [ → -, ] → -, / → -, : → -, (space) → -, then lowercase
function "sanitize_tag" {
  params = [tag]
  result = lower(replace(replace(replace(replace(replace(tag, "[", "-"), "]", "-"), "/", "-"), ":", "-"), " ", "-"))
}

group "default" {
  targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/${sanitize_tag(GITHUB_ACTOR)}/docker-custom-images/alpine-envsubst:${sanitize_tag(GITHUB_REF_NAME)}"]
}
