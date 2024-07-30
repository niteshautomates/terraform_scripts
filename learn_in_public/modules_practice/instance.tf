module "ubuntu" {
  source            = "./modules/m-web-server"
  image_id          = module.data.image_id
  instance_type     = var.instance_type
  key               = module.key-pair.public_key
  key_name          = module.key-pair.key-name
  security_group_id = module.security-group.security-group-id

}


module "key-pair" {
  source   = "./modules/m_key_pair"
  key      = var.key
  key_name = var.key_name
}


module "security-group" {
  source = "./modules/m-security-group"
}

module "data" {
  source = "./modules/m-data"
}