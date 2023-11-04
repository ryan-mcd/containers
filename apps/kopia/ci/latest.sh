# #!/usr/bin/env bash
# version=$(curl -sX GET "https://api.github.com/repos/kopia/kopia/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
# version="${version#*v}"
# version="${version#*release-}"

# # Need version 0.14.x
version="0.14.1"
printf "%s" "${version}"
