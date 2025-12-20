# Renovate Discussion 34893

[Direct Link to discussion here](https://github.com/renovatebot/renovate/discussions/34893)

This repo serves as a minimal reproduction example for a Renovate feature request with respect to Terraform `data "helm_template"` blocks.

## Current behavior

Currently, Renovate is _not_ able to detect updates to Helm charts when used inside of a Terraform `data "helm_template"` data source block. This is in contrast to a `resource "helm_release"` resource block which works perfectly fine.

## Expected behavior

Renovate should be able to detect new releases of Helm charts when used with a `data "helm_template"` and raise PRs for those changes as appropriate.

## Link to the Renovate issue or Discussion

https://github.com/renovatebot/renovate/discussions/34893
