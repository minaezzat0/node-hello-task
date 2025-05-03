resource "docker_image" "app" {
  name = var.image_name
}

resource "docker_container" "app" {
  name  = "node-hello"
  image = docker_image.app.name

  ports {
    internal = 3000
    external = 3000
  }

  env = {
    NEW_RELIC_LICENSE_KEY = var.new_relic_license_key
    NEW_RELIC_APP_NAME    = var.new_relic_app_name
    NODE_ENV              = var.node_env
  }

  restart = "always"
}
