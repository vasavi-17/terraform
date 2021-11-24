provider "docker" {
host = "unix:///var/run/docker.sock"
}
resource "docker_container" "mycontainer" {
name = var.container_name
image = var.image
ports {
internal = var.int_port
external = var.ext_port
}
}
