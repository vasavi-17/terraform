provider "docker" {
  host = "unix:///var/run/docker.sock"
}
resource "docker_image" "myimg" {
name = "var.myimg"
}
#specify variable block
variable "myimg" {
defaut = "centos:latest"
}
