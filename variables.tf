variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-rds-to-gpdb"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "tf-rds-to-gpdb-description"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "engine" {
  description = "The specification of the engine."
  type        = string
  default     = "MySQL"
}

variable "engine_version" {
  description = "The specification of the engine version."
  type        = string
  default     = "5.6"
}

variable "instance_storage" {
  description = "The specification of the instance storage."
  type        = string
  default     = "30"
}

variable "rds_instance_type" {
  description = "The specification of the rds instance type."
  type        = string
  default     = "rds.mysql.s3.large"
}

variable "instance_charge_type" {
  description = "The specification of the instance charge type."
  type        = string
  default     = "Postpaid"
}

variable "monitoring_period" {
  description = "The specification of the monitoring period."
  type        = string
  default     = "60"
}

variable "vpc_cidr_block" {
  description = "The cidr block of VPC information."
  type        = string
  default     = "192.168.1.0/24"
}

variable "vs_cidr_block" {
  description = "The cidr block of VSwitch information."
  type        = string
  default     = "192.168.1.0/24"
}

variable "gpdb_engine_version" {
  description = "The engine version type of GPDB."
  default     = "6.0"
}

variable "instance_spec" {
  description = "The instance spec type of GPDB."
  default     = "2C16G"
}

variable "payment_type" {
  description = "The payment type type of GPDB."
  default     = "PayAsYouGo"
}

variable "storage_size" {
  description = "The storage size type of GPDB."
  default     = 50
}

variable "seg_node_num" {
  description = "The seg node num type of GPDB."
  default     = 4
}

variable "seg_storage_type" {
  description = "The seg storage type of GPDB."
  default     = "cloud_essd"
}
