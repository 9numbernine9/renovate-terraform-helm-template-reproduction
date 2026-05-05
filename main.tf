terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "3.1.1"
    }
  }
}

# Renovate is NOT able to update this resource because it is being used inside of a `helm_template` block.
data "helm_template" "traefik_crds" {
  name       = "traefik-crds"
  repository = "https://traefik.github.io/charts"
  chart      = "traefik-crds"
  version    = "1.1.0" # The latest release of this chart is 1.13.0 at the time of this writing.
  values     = []
}

# By contrast, Renovate can handle this `helm_release` block just fine.
resource "helm_release" "traefik" {
  name       = "traefik"
  repository = "https://traefik.github.io/charts"
  chart      = "traefik"
  version    = "39.0.9" # The latest release of this chart is 38.0.1 at the time of this writing; Renovate can raise a PR for this upgrade.
  values     = []
}

