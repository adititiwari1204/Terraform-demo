# Define the Docker provider

terraform {
  required_providers {
    docker = {
      source = "hashicorp/docker"
      version = "~> v1.13.4"
    }
  }
}

provider "docker" {}

# Pull the NGINX Docker image
resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false     # Set to true if you want to keep the image after `terraform destroy`
}

# Create an NGINX Docker container
resource "docker_container" "nginx_container" {
  name  = "my-nginx-container"
  image = docker_image.nginx.latest # Reference the pulled image

  ports {
    internal = 80
    external = 8080 # Map container port 80 to host port 8080
  }

  # Optional: Mount a volume for custom NGINX configuration
  # volumes {
  #   container_path = "/etc/nginx/conf.d"
  #   host_path      = "./nginx-conf" # Assuming a local 'nginx-conf' directory
  # }

  # Optional: Restart policy
  restart = "unless-stopped"
}
