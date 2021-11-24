module "image" {
source = "./modules/image"
image_name = var.mod1_image
}
module "container" {
source = "./modules/container"
container_name = var.mod2_cname
image = module.image.image_out
int_port = var.mod2_intport
ext_port = var.mod2_extport
}
