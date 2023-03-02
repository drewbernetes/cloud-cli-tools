#!/bin/bash

PACKAGES="kubernetes/kubernetes helm/helm hashicorp/vault sigstore/cosign anchore/grype anchore/syft aquasecurity/trivy"

for i in $PACKAGES; do
printf '%s: %s\n' $i $(curl --silent "https://api.github.com/repos/${i}/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
done
