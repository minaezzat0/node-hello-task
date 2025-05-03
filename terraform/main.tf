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
}