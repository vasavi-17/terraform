provider "docker" {
host = "unix:///var/run/docker.sock"
}
resource "docker_image" "myimage" {
name = var.image_name
}
