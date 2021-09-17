Terraform module which creates Migration service with RDS&GPDB on Alibaba Cloud

terraform-alicloud-rds-to-gpdb
=====================================================================

English | [简体中文](README-CN.md)

This module is used to create a data migration service under Alibaba Cloud.

These types of resources are supported:

* [alicloud_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/instance)
* [alicloud_gpdb_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/gpdb_instance)
* [alicloud_slb_load_balancer](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/slb_load_balancer)
* [alicloud_eip](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/eip)
* [alicloud_vpc](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc)
* [alicloud_vswitch](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vswitch)
* [alicloud_security_group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/security_group)
* [alicloud_db_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/db_instance)

## Usage

```hcl
module "example" {
  source              = "terraform-alicloud-modules/rds-to-gpdb/alicloud"
  name                = "tf-rds-to-gpdb"
  ecs_instance_type   = "ecs.n4.large"
  rds_instance_type   = "rds.mysql.s3.large"
  gpdb_instance_class = "gpdb.group.segsdx2"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.127.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.127.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
