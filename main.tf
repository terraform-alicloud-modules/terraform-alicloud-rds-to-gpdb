resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "default" {
  vswitch_name = var.name
  cidr_block   = var.vs_cidr_block
  vpc_id       = alicloud_vpc.default.id
  zone_id      = var.availability_zone
}

resource "alicloud_gpdb_elastic_instance" "default" {
  engine                  = "gpdb"
  engine_version          = var.gpdb_engine_version
  seg_storage_type        = var.seg_storage_type
  seg_node_num            = var.seg_node_num
  storage_size            = var.storage_size
  instance_spec           = var.instance_spec
  db_instance_description = var.description
  instance_network_type   = "VPC"
  payment_type            = var.payment_type
  vswitch_id              = alicloud_vswitch.default.id
}

resource "alicloud_db_instance" "default" {
  instance_name        = var.name
  vswitch_id           = alicloud_vswitch.default.id
  engine               = var.engine
  engine_version       = var.engine_version
  instance_type        = var.rds_instance_type
  instance_storage     = var.instance_storage
  instance_charge_type = var.instance_charge_type
  monitoring_period    = var.monitoring_period
}
