variable "GITHUB_ACTOR" {}
variable "GITHUB_REF_NAME" {}
variable "GITHUB_SHA" {}

# Function to sanitize Docker tag names by replacing invalid characters
# Docker tags specification allows: a-z, A-Z, 0-9, _, ., -
# This function normalizes to lowercase and replaces invalid characters with dashes
# Also trims leading and trailing dashes to ensure valid Docker tag format
# Transformations applied in order: [ → -, ] → -, / → -, : → -, (space) → -, lowercase, trim dashes
function "sanitize_tag" {
  params = [tag]
  result = trimprefix(trimsuffix(lower(replace(replace(replace(replace(replace(tag, "[", "-"), "]", "-"), "/", "-"), ":", "-"), " ", "-")), "-"), "-")
}

group "default" {
  targets = ["alpineEnvsubst"]
}

target "alpineEnvsubst" {
  context = "./docker/alpineEnvsubst"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/${sanitize_tag(GITHUB_ACTOR)}/docker-custom-images/alpine-envsubst:${sanitize_tag(GITHUB_REF_NAME)}"]
}
