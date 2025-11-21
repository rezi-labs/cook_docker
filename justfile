import 'docker.just'
import? 'private.just'

image_name := "ghcr.io/rezi-labs/cook_docker"

verify:
    echo "No verification steps"

generate-session-secret:
    openssl rand -base64 64
